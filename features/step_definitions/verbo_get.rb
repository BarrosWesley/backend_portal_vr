Dado('que eu faça um GET no endpoint vrpat') do
  @get_vrpat = RegisterService.get '/'
end

Entao('o retorno dele será o servico que possui a chave typeOfEstablishment') do
  #puts @get_vrpat.body
  expect(@get_vrpat.code).to eq 200
  expect(@get_vrpat).to include('typeOfEstablishment')
  
  json_response = JSON.parse(@get_vrpat.body)
  tipos_estabelecimentos = json_response['typeOfEstablishment']
  tipo_aleatorio = tipos_estabelecimentos.sample

  puts "Tipo de estabelecimento aleatório: #{tipo_aleatorio}"
end
