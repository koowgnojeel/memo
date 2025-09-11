Summary

    Create window ***

        CTRL_b c

    Previous window ***

        CTRL_b p

    Next window ***

        CTRL_b n

    Switch/select window by number ***

        CTRL_b 0 ... 9

    -----------------------------------------------------------------------------

    Switch to pane ***

        CTRL_b left, right, up, down

    Switch/select pane by number ***

        CTRL_b q 0 ... 9

    Split horizontally  ***

        : split-window -h
        CTRL_b %

    Split vertically ***

        : split-window -v
        CTRL_b "

    Toggle layouts ***

        CTRL_b Spacebar

    Toggle zoom ***

        CTRL_b z

    Move the current pane left ***

        CTRL_b {

    Move the current pane right ***

        CTRL_b }

    Show pane numbers ***

        CTRL_b q

=============================================================================


index
    Basic
    Windows
    Panes
    Search
    Copy
    Misc


Basic

    Command mode

        CTRL_b :

    Clock

        CTRL_b t

    Start a new session

        $ tmux
        $ tmux new
        $ tmux new-session
        : new

        Start a new session with the name mysession

            $ tmux new -s mysession
            : new -s mysession

        Start a new session or attach to an existing session named mysession

            $ tmux new-session -A -s mysession


    List sessions

        $ tmux ls
        $ tmux list-sessions

        Show all sessions

            CTRL_b s


    Rename session

        CTRL_b $


    Detach

        CTRL_b d

            Detach from session

        : attach -d

            Detach others on the session (Maximize window by detach other clients)


    Attach

        $ tmux a
        $ tmux at
        $ tmux attach
        $ tmux attach-session

        Attach to a session with the name mysession

            $ tmux a -t mysession
            $ tmux at -t mysession
            $ tmux attach -t mysession
            $ tmux attach-session -t mysession


    Kill

        kill/delete the current session
            : kill-session

        kill/delete session mysession

            $ tmux kill-ses -t mysession
            $ tmux kill-session -t mysession

        kill/delete all sessions but the current

            $ tmux kill-session -a

        kill/delete all sessions but mysession

            $ tmux kill-session -a -t mysession

        Kill current window

            CTRL_b &

        Kill current pane

            CTRL_b x


    Switch between sessions

        Session and Window Preview ***

            CTRL_b w

        Move to previous session

            CTRL_b (

        Move to next session

            CTRL_b )


    Help

        List key bindings(shortcuts)

            CTRL_b ?
            : list-keys
            $ tmux list-keys


        Show every session, window, pane, etc...

            $ tmux info


Windows

    $ tmux new -s mysession -n mywindow

        start a new session with the name mysession and window mywindow

    List windows ***

        CTRL_b w

    Create window ***

        CTRL_b c

    Previous window ***

        CTRL_b p

    Next window ***

        CTRL_b n

    Switch/select window by number ***

        CTRL_b 0 ... 9

    Toggle last active window

        CTRL_b l

    Rename current window

        CTRL_b ,


    Reorder

        switch the position of windows

            : swap-window -t 3


        converting a window into a pane 

            : join-pain -s :1


        converting a pane into a window

            CTRL_b !


        Reorder window, swap window number 2(src) and 1(dst)

            : swap-window -s 2 -t 1


        Move current window to the left by one position

            : swap-window -t -1


        Move window from source to target

            : move-window -s src_ses:win -t target_ses:win
            : movew -s foo:0 -t bar:9
            : movew -s 0:0 -t 1:9


        Reposition window in the current session

            : move-window -s src_session:src_window
            : movew -s 0:9


        Renumber windows to remove gap in the sequence

            : move-window -r
            : movew -r


Panes

    Layout

        Split horizontally  ***

            : split-window -h
            CTRL_b %


        Split vertically ***

            : split-window -v
            CTRL_b "


        Toggle layouts ***

            CTRL_b Spacebar


        Toggle zoom ***

            CTRL_b z


        Move

            Move the current pane left ***

                CTRL_b {

            Move the current pane right ***

                CTRL_b }

        Save/Load

            Save current pane layout

                CTRL_b s

            Load saved pane layout

                CTRL_b f


    Switch

        Show pane numbers ***

            CTRL_b q


        Switch/select pane by number ***

            CTRL_b q 0 ... 9


        Switch to pane ***

            CTRL_b left, right, up, down


        Switch to next pane

            CTRL_b o


    Etc.

        Join two windows as panes (Merge window 2 to window 1 as panes)

            : join-pane -s 2 -t 1


        Move pane from one window to another (Move pane 1 from window 2 to pane after 0 of window 1)

            : join-pane -s 2.1 -t 1.0


        Toggle synchronize-panes(send command to all panes)

            : setw synchronize-panes


        Resize 

            TODO


Search

    forward            : /
    backward           : ?
    Next occurance     : n
    Previous occurance : N


Copy

	tmux/tmux Wiki - Copy and paste
	https://github.com/tmux/tmux/wiki/Getting-Started#copy-and-paste

    To enter copy mode

        CTRL_b [, q to quit from copy mode


    Quit from copy mode
        q


    Start a selection     

        CTRL_SPACE  


    Copy and exit copy mode         

        CTRL_w      


    Buffer

        Paste contents of buffer_0

            CTRL_b ]


        display buffer_0 contents

            : show-buffer
            CTRL_b =    


        copy entire visible contents of pane to a buffer

            : capture-pane


        Show all buffers

            : list-buffers


        Show all buffers and paste selected

            : choose-buffer


        Save buffer contents to buf.txt

            : save-buffer buf.txt


        delete buffer_1

            : delete-buffer -b 1


Misc


    Set OPTION for all sessions

        : set -g OPTION


    Set OPTION for all windows

        : setw -g OPTION


    Enable mouse mode

        : set mouse on


