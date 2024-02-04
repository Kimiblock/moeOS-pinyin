-- limit_multi_char_word_filter: 候选项重排序，将10项以后的多字词组排到末尾

local function filter(input)
  local l = {}
  local limit = 12
  local i = 0
  for cand in input:iter() do
    i = i + 1
    if i > limit and utf8.len(cand.text) > 1 then
      table.insert(l, cand)
    else
      yield(cand)
    end
  end
  for i, cand in ipairs(l) do
    yield(cand)
  end
end

return filter
