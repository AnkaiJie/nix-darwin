{ ... }: {
  programs.git = {
    enable = true;
    settings.user.name = "ankai";
    settings.user.email = "ankaijie@gmail.com";
  };
}
