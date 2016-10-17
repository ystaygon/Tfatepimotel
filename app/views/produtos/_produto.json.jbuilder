json.extract! produto, :id, :Pro_Id, :Pro_Noproduto, :Pro_Nrquantidade, :Pro_Vlcompra, :Pro_Vlvenda, :created_at, :updated_at
json.url produto_url(produto, format: :json)