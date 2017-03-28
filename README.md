# Rack Custom Proxies

Rack makes some pretty terrible decisions about what makes a trusted proxy. It assumes that all RFC1918 private addresses are trusted proxies. This is not cool. The only way to fix it in an application is to monkey patch the `Rack::Request` method.

There seems to be very little movement in the Rack project to get this resolved. Rails also has some similar issues with its assumption that all private networks should be treated as trusted proxies.

This gem allows the list of trusted proxies to be more easily configured. The easiest way is to set an environment variable `RACK_TRUSTED_PROXIES` to a list (seperated by spaces) of networks that are to be trusted. The actual list of proxies has no place in an application's source code and is very much a configuration item.

You can, if you wish, adjust the array easily using `Rack::Request.trusted_proxies`.

Just include the gem and you'll be good to go.
