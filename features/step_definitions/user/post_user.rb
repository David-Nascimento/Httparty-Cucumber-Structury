Given('que eu envio uma requisicao para criar um novo usuario') do
  $response = @user.create_user
end

When('minha API retornar {int}') do |status_code|
  expect($response.code).to eq status_code
end

Then('meu usuario é criado com sucesso') do
  expect($response["message"]).not_to be_empty
end