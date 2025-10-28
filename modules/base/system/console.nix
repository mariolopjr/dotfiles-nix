{
  flake.modules.nixos.base = {
    console = {
      earlySetup = true;
      useXkbConfig = true;
    };

    services.xserver.xkb = {
      layout = "us";
    };
  };
}
