# go-socks5-proxy

Simple socks5 server using go-socks5 with auth

# Start container with proxy
```docker run -d --restart always --name socks5-proxy -p 1080:1080 -e PROXY_USER=<PROXY_USER> -e PROXY_PASSWORD=<PROXY_PASSWORD> koluch/go-socks-server```

where

```<PROXY_USER>``` - username to authenticate

```<PROXY_PASSWORD>``` - password to authenticate

# Test running service
```curl --socks5 <docker machine ip>:1080 -U <PROXY_USER>:<PROXY_PASSWORD> http://checkip.amazonaws.com``` - result must show docker host ip (for bridged network)
