Selenium::WebDriver::Chrome::Service.driver_path=File.join(File.dirname(__FILE__), '../../drivers/chromedriver.exe')

Dado('que estou na página principal do Google') do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://www.google.com"
end

Quando('preencho o campo de busca pelo conteudo {string}') do |string|
  @driver.find_element(:name, "q").send_keys(string)
  sleep 3
end

Quando('eu clico no botão "Pesquisa Google"') do
  @driver.find_element(:name, "btnK").click
end

Então('o Google retorna o link do "Checklist Fácil"') do
  @driver.find_element(:css, "link[href='https://www.checklistfacil.com/'][rel='prerender']")
end

Dado('que realizei a busca pelo conteudo {string}') do |string|
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://www.google.com"
  @driver.find_element(:name, "q").send_keys(string)
  sleep 3
  @driver.find_element(:name, "btnK").click
  sleep 4
end

Quando('eu clico no link do {string}') do |string|
  @driver.find_element(:xpath, "//*[contains(text(),'Checklist Fácil: faça a gestão de processos no mobile ou web')]").click
end

Então('a página do Checklist Fácil é aberta') do
  assert_equal("https://www.checklistfacil.com/", @driver.current_url, "Está na página do checklist fácil.")
end