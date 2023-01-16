desc 'Executando testes de serviço'
task :service,[:tags] do |t, args|
  sh "bundle exec cucumber -p hmg --format Allure::CucumberFormatter --out allure-results/ -t #{args[:tags]} -f pretty"
end