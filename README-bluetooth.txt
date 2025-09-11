Bluetooth

    rfkill

        msg

            Attempting to connect to 40:58:99:43:C1:BE
            Failed to connect: org.bluez.Error.NotReady br-connection-adapter-not-powered

        $ rfkill list
            0: hci0: Bluetooth
                    Soft blocked: yes
                    Hard blocked: no
            1: phy0: Wireless LAN
                    Soft blocked: no
                    Hard blocked: no
            2: ideapad_wlan: Wireless LAN
                    Soft blocked: no
                    Hard blocked: no
            3: ideapad_bluetooth: Bluetooth
                    Soft blocked: yes
                    Hard blocked: no

        $ sudo rfkill unblock bluetooth

        $ rfkill list
            0: hci0: Bluetooth
                    Soft blocked: no
                    Hard blocked: no
            1: phy0: Wireless LAN
                    Soft blocked: no
                    Hard blocked: no
            2: ideapad_wlan: Wireless LAN
                    Soft blocked: no
                    Hard blocked: no
            3: ideapad_bluetooth: Bluetooth
                    Soft blocked: no
                    Hard blocked: no

    bluetoothctl

        $ bluetoothctl

        Restart service

            $ sudo systemctl restart bluetooth.service

        Enable Agent and Default Agent for pairing

            agent on
            default-agent

        Scan on/off

            scan on
            scan off

        Pair the device.
        You may be prompted to enter a PIN or confirm pairing, depending on the device.

            pair XX:XX:XX:XX:XX:XX

        Trust the Device for Automatic Reconnection

            trust XX:XX:XX:XX:XX:XX

        Connect to the Device.

            connect XX:XX:XX:XX:XX:XX

        Device list

            devices [Paired/Bonded/Trusted/Connected]

            devices Paired
            devices Bonded
            devices Trusted
            devices Connected

        Exit

            quit


