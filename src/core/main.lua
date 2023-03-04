local products = {}

-- @params
-- username: string

-- @returns boolean
local function productExist(productName)
  return table.find(products, function(value)
    return value.productname == productName
  end)
end
 
-- @params
-- password: string
-- username: string

-- @return boolean
function createProduct(productName, price)
  if (type(productName) ~= "string" and type(price) ~= ("string" or "number")) then
      return false
  end

  if (productExist(productName)) then
    return outputChatBox("Esse produto ja existe em nossa tabela.", 255, 0 ,0)
  end
  table.insert(products, {productname = productName, price = price})
  return outputChatBox("Produto criado com sucesso.", 0, 255, 0)
end

function returnProductsList()
  iprint(products)
end
