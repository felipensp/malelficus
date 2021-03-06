-- Convert string to hex

local modname = ...
local hex = {}

if #_G > 0 then
   _G[modname] = hex
end

function hex.strhex( str, format )
   local format = format or "0x%02x"
   local hex = {}

   for i = 1, #str, 1
   do
      local b = str:byte(i)
      table.insert(hex, string.format(format, b))
   end

   return hex
end

if arg and #arg > 0 and modname ~= 'hex' then
   bytes = hex.strhex( ... )
   for i, v in ipairs(bytes) do
      io.write(v .. ' ')
   end
   print ""
end

return hex