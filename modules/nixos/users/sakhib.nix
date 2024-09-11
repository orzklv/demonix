{ pkgs, ... }: {
  config = {
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.sakhib = {
      isNormalUser = true;
      description = "Sokhibjon Orzikulov";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
        #  thunderbird
        telegram-desktop
      ];
    };

  };
}
