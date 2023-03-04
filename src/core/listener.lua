addCommandHandler("createNewProduct", function(_, productName, Price)
  createProduct(productName, Price)
end)

addCommandHandler("returnProducts", function(_)
  returnProductsList()
end)

addCommandHandler("setLanguage", function(_, lang)
  setLanguageTo(lang)
end)