local telepoofOn =
AddAction("TELEPOOFON", "打开", function(_) return false end)
telepoofOn.mount_valid = true

local telepoofOff =
AddAction("TELEPOOFOFF", "关掉", function(_) return false end)
telepoofOff.mount_valid = true