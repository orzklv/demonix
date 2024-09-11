{ pkgs, ... }: {
  config = {
    users.users.shakhzod = {
      isNormalUser = true;
      description = "Shakhzod";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
        # thunderbird
        firefox
      ];
    };

  };
}
