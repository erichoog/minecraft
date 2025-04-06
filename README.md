
## Required ports / Firewall rules on host

```
25562/tcp
19132/udp
19133/udp
```

## PaperMC

The server is PaperMC and loads Geyser-Spigot and ViaVersion plugins


## Geyser-Spigot

This is for the bedrock compatability with the minecraft java server.

Reference info: https://geysermc.org/wiki/geyser/

Be aware of this Geyser-Spigot bug:
https://github.com/GeyserMC/Geyser/issues/5454

I had to use one version older than the current version to get around this (it is committed in the repo - delete the file to get the updated jar file downloaded automatically)


## BedrockConnect

This lets you provide a custom server list to Bedrock clients like gaming consoles.

Reference info: https://github.com/Pugmatt/BedrockConnect/blob/master/README.md

Update the `BedrockConnect/serverlist.json` file with your server info.


Required external configurations:

These are the DNS domains to override to point to your internal BedrockConnect server

If using pihole then update `/etc/pihole/pihole.toml` to enable using dnsmasq.d (set `etc_dnsmasq_d = true`)

Then add this to `/etc/dnsmasq.d/02-bedrockconnect-dns.conf` then restart pihole

```
address=/.hivebedrock.network/<BedrockConnectIP>
address=/.inpvp.net/<BedrockConnectIP>
address=/.lbsg.net/<BedrockConnectIP>
address=/.galaxite.net/<BedrockConnectIP>
address=/.enchanted.gg/<BedrockConnectIP>
```

## Worlds

In the worlds directory, create a dir for your world with the world, world_nether, and world_the_end.

Then update the `docker-compose.yml` file volume paths to point to the world you want loaded on the server.

