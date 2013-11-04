globals.homepage = "https://duckduckgo.com"
downloads.default_dir = os.getenv("HOME") .. "/Downloads"
search_engines.default = search_engines.google
require "adblock/adblock"
require "adblock/adblock_chrome"
local s = follow.styles
follow.style = s.sort(s.reverse(s.charset("asdfghjkl")))

