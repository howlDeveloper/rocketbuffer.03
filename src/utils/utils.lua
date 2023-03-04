function table.find(array, callback)
  for i ,v in pairs(array) do
    local c = callback(v, i)
    if (c) then
      return i
    end
  end
end