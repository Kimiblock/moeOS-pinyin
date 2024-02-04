-- Rime Lua 扩展 https://github.com/hchunhui/librime-lua
-- 文档 https://github.com/hchunhui/librime-lua/wiki/Scripting



-- processors:

-- 以词定字，可在 default.yaml key_binder 下配置快捷键，默认为左右中括号 [ ]
select_character = require("select_character")

limit_mulchar = require("limit_mulchar")

-- filters:

-- 错音错字提示
corrector = require("corrector")

-- 自动大写英文词汇
autocap_filter = require("autocap_filter")




-- 默认未启用：

-- 长词优先（全拼）
-- 在 engine/filters 增加 - lua_filter@long_word_filter
-- 在方案里写配置项:
-- 提升 count 个词语，插入到第 idx 个位置。
-- 示例：将 2 个词插入到第 4、5 个候选项，输入 jie 得到「1接 2解 3姐 4饥饿 5极恶」
-- long_word_filter:
--   count: 2
--   idx: 4
long_word_filter = require("long_word_filter")

-- 根据是否在用户词典，在 comment 上加上一个星号 *
-- 在 engine/filters 增加 - lua_filter@is_in_user_dict
-- 在方案里写配置项：
-- is_in_user_dict: true     为输入过的内容加星号
-- is_in_user_dict: flase    为未输入过的内容加星号
is_in_user_dict = require("is_in_user_dict")

-- 词条隐藏、降频
-- 在 engine/processors 增加 - lua_processor@cold_word_drop_processor
-- 在 engine/filters 增加 - lua_filter@cold_word_drop_filter
-- 在 key_binder 增加快捷键：
-- turn_down_cand: "Control+j"  # 匹配当前输入码后隐藏指定的候选字词 或候选词条放到第四候选位置
-- drop_cand: "Control+d"       # 强制删词, 无视输入的编码
cold_word_drop_processor = require("cold_word_drop.processor")
cold_word_drop_filter = require("cold_word_drop.filter")
