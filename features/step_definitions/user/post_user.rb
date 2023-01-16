Given('que eu envio uma requisicao para criar um novo usuario') do
  puts $token = @user.create_user
end

When('minha API retornar {int}') do |status_code|

end

Then('meu usuario é criado com sucesso') do

end