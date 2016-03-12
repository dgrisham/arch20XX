dotfiles
--------

In the file descriptions, the `Path:` line in each description specifies the
complete path/filename that the file should be placed under.

### aliases

-   PATH: `$HOME/.aliases`
-   Various `zsh` aliases, just `wifi_connect()` so far

#### wifi_connect

-   Requires the file `/etc/wpa_supplicant/wireless_networks.conf` to exist and
    holds details for wireless networks. See the [example
    `wireless_networks.conf`](../confs/wpa_supplicant/wireless_networks.conf)
    template for formatting/examples.
-   NOTE: If `wpa_supplicant` is already running (even if it's as a result of a
    call to `wifi_connect()`), you may have to run `wifi_connect()` again if it
    doesn't work the first time.
