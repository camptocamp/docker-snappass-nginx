# docker-snappass-nginx

An image that includes a configuration file set up for snappass (https://github.com/pinterest/snappass)

## Configuration

### snappass host name

By default, nginx is configured to proxy pass on the host named "snappass".
This can be changed with the environment variable `NGX_SNAPPASS_HOST`.

### Additional configuration

Custom configuration can be added in the `http` section with `HTTP_EXTRA_CONF`.

### HTTP accesses for edit page

Custom access allow/deny for the root page (the page allowing to create
passwords) can be configured using the environment variable `NGX_HTTP_ACCESS`
with using a multiline content such as:

```
deny 192.168.1.1;
allow 192.168.1.0/24;
deny all;
```
