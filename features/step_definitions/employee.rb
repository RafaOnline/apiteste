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


  Dado('que o usuario cadastre um novo produto') do
    @post_url = 'https://fakestoreapi.com/products'
  end
  
  Quando('ele enviar as informacoes do produto') do
    @creat_employee = HTTParty.post(@post_url, :headers =>{'Content-Type': 'application/json'}, body: {
      "id": 22,
      "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "price": 109.9,
      "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "category": "men's clothing",
      "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      "rating": {
          "rate": 3.9,
          "count": 120
      }
    }.to_json)

    puts @creat_employee
  end
  
  Entao('esse produto sera cadastrado') do
    expect(@creat_employee.code).to eql 200
    expect(@creat_employee.message).to eql 'OK'
    expect(@creat_employee['price']).to eql (109.9)
    puts @creat_employee.code
    puts @creat_employee.msg
    puts @creat_employee["id"]
    puts @creat_employee["category"]
  end