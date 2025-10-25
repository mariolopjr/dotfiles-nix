{lib, ...}: {
  flake.modules.nixos.base = {config, ...}: {
    i18n = {
      defaultLocale = "en_US.UTF-8";
    };

    services = {
      localtimed.enable = config.services.geoclue2.enable or false;
    };

    time.timeZone = lib.mkDefault "America/New_York";
  };
}
