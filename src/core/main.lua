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
    if (language == "PT-BR") then
      return outputChatBox("Esse produto ja existe em nossa tabela.", 255, 0 ,0)
    elseif (language == "EN") then
      return outputChatBox("this product already exists in our table", 255, 0, 0)
    end
  end

  table.insert(products, {productname = productName, price = price})
  if (language == "PT-BR") then
    return outputChatBox("Produto criado com sucesso.", 0, 255, 0)
  elseif (language == "EN") then
    return outputChatBox("the product was created successfully", 0, 255, 0)
  end
end

-- @return list
function returnProductsList()
  iprint(products)
end

-- @params

-- @return string
function setLanguageTo(lang)
  if (lang == language) then
    if (language == "PT-BR") then
      return outputChatBox("bip bop... a linguagem ja está em PT-BR", 255, 0, 0)
    elseif (language == "EN") then
      return outputChatBox("bip bop.. the language is already in EN", 255, 0, 0)
    end
  end

  if (lang == "PT-BR") then
    language = lang
    return outputChatBox("language: PT-BR")
  elseif (lang == "EN") then
    language = lang
    return outputChatBox("linguagem: EN")
  end
end