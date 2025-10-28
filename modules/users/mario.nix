{
  flake = {
    meta.users.mario = rec {
      username = "mario";
      homeDirectory = "/home/${username}";
      name = "Mario";
      email = "mariolopjr@users.noreply.github.com";
      authorizedKeys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPLb9jN80JWeFl1DOHD0ZcKXrGzq/Oa/bbb5lGG64AW7 "
      ];
    };
  };
}
