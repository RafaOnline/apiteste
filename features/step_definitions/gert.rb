Dado('que o usuario consulte informacoes dos produtos') do
    @get_url = 'https://fakestoreapi.com/products'
  end
  
  Quando('ele realiar a pesquisa') do
    @list_employee = HTTParty.get(@get_url)
  end
  
  Entao('uma lista de produtos deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
  end