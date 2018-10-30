# Delta Skip It

"It" is horrible, so we skip it.

## Guide

Windows and another unix like device should in the same local network.

### Windows

- Install [squid](http://www.squid-cache.org/) for proxy

### Mac / Linux

- Install [AnyConnect](https://software.cisco.com/download/home/286281283/type)

- Ensure AnyConnect is __closed__

- Copy `.env.template` to `.env` and fill the variables

    ```bash
    WINDOWS_NAME= # Your windows PC name
    PROXY_PORT=3128 # change this if you reconfigure squid
    VPN_ADDRESS= # VPN Address
    ```

- Run `./start.sh` and enter your VPN username and password to connect internal networks

- Run `./stop.sh` to reset the network

## Advanced

You have to restart your Squid to applied `squid.conf`.

### DNS

Use the same DNS as your windows PC setting:

```text
dns_nameservers 10.136.156.1 8.8.8.8 208.67.222.222
```

### Local Hosts File

Apply hosts file in your windows PC:

```text
hosts_file C:/Windows/System32/drivers/etc/hosts
```
