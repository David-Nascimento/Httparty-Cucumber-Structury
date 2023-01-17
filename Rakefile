desc "Executando testes de serviços"
task :service,[:tags] do |t, args|
  sh "bundle exec cucumber -p hmg --format AllureCucumber::CucumberFormatter --out allure-results/ -t #{args[:tags]} -f pretty"
end