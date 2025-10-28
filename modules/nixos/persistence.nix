{
  flake.modules.nixos.persistence =
    { pkgs, config, ... }:
    {
      preservation = {
        enable = true;
        preserveAt."/persist" = {
          directories = [
            "/var/lib/systemd/timers"
            # NixOS user state
            "/var/log"
            { directory = "/var/lib/nixos"; inInitrd = true; }
          ];

          files = [
            # auto-generated machine ID
            { file = "/etc/machine-id"; inInitrd = true; how = "symlink"; configureParent = true; }
            { file = "/etc/ssh/ssh_host_rsa_key"; how = "symlink"; configureParent = true; }
            { file = "/etc/ssh/ssh_host_ed25519_key"; how = "symlink"; configureParent = true; }
          ];

          # TODO: don't hardcode username
          systemd.tmpfiles.settings.preservation = {
            "/home/mario/.config".d = { user = "mario"; group = "users"; mode = "0755"; };
            "/home/mario/.local".d = { user = "mario"; group = "users"; mode = "0755"; };
            "/home/mario/.local/share".d = { user = "mario"; group = "users"; mode = "0755"; };
            "/home/mario/.local/state".d = { user = "mario"; group = "users"; mode = "0755"; };
          };
        };
      };

      # systemd-machine-id-commit.service would fail, but it is not relevant
      # in this specific setup for a persistent machine-id so we disable it
      systemd.suppressedSystemUnits = [ "systemd-machine-id-commit.service" ];

      # let the service commit the transient ID to the persistent volume
      systemd.services.systemd-machine-id-commit = {
        unitConfig.ConditionPathIsMountPoint = [
          ""
          "/persistent/etc/machine-id"
        ];
        serviceConfig.ExecStart = [
          ""
          "systemd-machine-id-setup --commit --root /persist"
        ];
      };
    };
}
