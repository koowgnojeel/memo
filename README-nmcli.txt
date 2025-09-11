1/2.
    nmcli dev wifi connect "..." password "..."

2/2.
    nmcli con
    nmcli con up   "Jong W.의 iPhone"
    nmcli con down "Jong W.의 iPhone"

##### networking - Connecting to wifi network through command line - Unix & Linux Stack Exchange  
https://unix.stackexchange.com/questions/92799/connecting-to-wifi-network-through-command-line  
  
    To list available connections  
    
        $ nmcli dev wifi (nmcli device wifi rescan)
    
            IN-USE  BSSID              SSID               MODE   CHAN  RATE        SIGNAL  BARS  SECURITY  
                    7E:F3:1B:40:FE:51  V50S ThinQ_5626    Infra  11    130 Mbit/s  100     ▂▄▆█  WPA2  
                ...  
      
    For a new connection:  
        $ nmcli dev wifi connect <mySSID> password <myPassword>  
        $ nmcli dev wifi connect "V50S ThinQ_5626" password "koowgnojeel1"  
    
    Reconnect (if a connection was already set up)  
        $ nmcli con up id <mySSID>  
    
        $ nmcli con up "V50S ThinQ_5626"  # reconnect  
        $ nmcli c   up uuid <paste uuid here>  
    
    To list prev. established connections  
        $ nmcli connection (or $ nmcli c)  

    nmtui (NetworkManager Text User Interface)

MAN page - General Commands Manual  
  
    nmcli 
        [OPTIONS...] 
        help 
        general 
        networking 
        radio 
        connection 
        device 
        agent 
        monitor
        [COMMAND] [ARGUMENTS...]  
  
    DEVICE MANAGEMENT COMMANDS  

        nmcli device 
            status 
            show 
            set 
            up 
            connect 
                (B)SSID [password password] [wep-key-type {key | phrase}] [ifname ifname] [bssid BSSID] [name name] [private {yes | no}] [hidden {yes | no}]  
            reapply 
            modify 
            down 
            disconnect 
            delete 
            monitor 
            wifi 
                list [--rescan | auto | no | yes] [ifname ifname] [bssid BSSID]]  
            lldp 
            [ARGUMENTS...]  
  
  
    CONNECTION MANAGEMENT COMMANDS  

        nmcli connection 
            show 
            up 
                [id | uuid | path] ID [ifname ifname] [ap BSSID] [passwd-file file]  
            down 
            modify 
            add 
            edit 
            clone 
            delete 
            monitor 
            reload 
            load 
            import 
            export
            [ARGUMENTS...]  
  

$ ls -l /sys/class/net  
    wlp2s0 -> ../../devices/pci0000:00/0000:00:02.2/0000:02:00.0/net/wlp2s0  
    enp1s0 -> ../../devices/pci0000:00/0000:00:02.1/0000:01:00.0/net/enp1s0  
    lo     -> ../../devices/virtual/net/lo  


* /home/koowgnojeel/Documents/docs/siteGoogleKoowgnojeel/takeout-20200622T112038Z-001.parsed/UnixlikeGnulinuxDebianNetworkconfigurationWifi.txt  
* /home/koowgnojeel/Documents/docs/siteGoogleKoowgnojeel/takeout-20200622T112038Z-001.parsed/UnixlikeGnulinuxDebianNetworkconfigurationRfkill.txt  


