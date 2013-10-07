Configuration for luakit web browser.
-------------------------------------

`rc.lua` taken from `/etc/xdg/luakit/` and changed to include conf from `userconf.lua` by adding the following string:

	require "userconf"

`userconf.lua` contains following options:

-	Default homepage changed to www.google.ru.
-	Default search engine changed to google.
-	Downloads directory changed to `~/Downloads`.
-	Loads adblock module.

