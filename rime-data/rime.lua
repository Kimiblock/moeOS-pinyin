-- Rime Lua 扩展 https://github.com/hchunhui/librime-lua
-- 文档 https://github.com/hchunhui/librime-lua/wiki/Scripting



-- processors:

limit_mulchar = require("limit_mulchar")

-- filters:

-- 错音错字提示
corrector = require("others.rime-ice.lua.corrector")

-- 自动大写英文词汇
autocap_filter = require("others.rime-ice.lua.autocap_filter")

-- 根据是否在用户词典，在 comment 上加上一个星号 *
-- 在 engine/filters 增加 - lua_filter@is_in_user_dict
-- 在方案里写配置项：
-- is_in_user_dict: true     为输入过的内容加星号
-- is_in_user_dict: flase    为未输入过的内容加星号
is_in_user_dict = require("others.rime-ice.lua.is_in_user_dict")

# Force garbage collection
function force_gc()
    -- collectgarbage()
    collectgarbage("step")
end