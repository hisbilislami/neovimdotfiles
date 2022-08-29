require('specialcode.base')
require('specialcode.highlights')
require('specialcode.maps')
require('specialcode.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"
local is_unix = has "unix"

if is_mac then
  require('specialcode.macos')
end
if is_win then
  require('specialcode.windows')
end
if is_unix then
  require('specialcode.unix')
end
