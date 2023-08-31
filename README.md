<<<<<<< HEAD
<<<<<<< HEAD
# Automação de testes web para o site Sauce Demo utilizando Robot Framework no padrão Page Objects

 Requisitos de software:

* Python >= 3.7 -> https://www.python.org/downloads/
* Chromedriver -> https://chromedriver.chromium.org/downloads
* Navegador Web (Chrome)
* Frameworks e libraries utilizados

## FRAMEWORKS E LIBRARIES UTILIZADOS

* Robot Framework  - O Robot inclui uma lista de Bibliotecas padrão - Responsável pela especificação executável de cenários
* Selenium Library - Biblioteca adcional                            - Responsável pela interação com páginas web

Comandos:
+ pip (instalador de pacotes do python) -> python -m pip install --upgrade pip
+ libraries necessárias -> pip install -r requirements.txt 


Ao rodar o robot pela linha de comando podemos passar alguns argumentos
* -d {path}             -> Aponta o caminho para registrar os resultados do teste
* -i {tag}              -> Indica qual tag será incluída no teste
* --skip {tag}          -> Indica qual tag será pulada no teste

Exemplos de execuções do robot a partir da pasta raiz

* EX1:  robot -d test/logs/Results .\Saucedemo_testes\              -> Executa todos os testes da pasta Saucedemo_testes e salva o resultado na pasta Results
* EX2:  robot -d test/logs/Results -i login .\Saucedemo_testes\     -> Executa todos os testes com a tag login e salva o resultado na pasta Results
* EX3:  robot -d test/logs/Results -d login .\Saucedemo_testes\     -> Executa todos os testes, menos os que possuem a tag login e salva o resultado na pasta Results
=======
# testes_sauce_demo
Testes automatizados do site Sauce Demo utilizando Robot Framework no padrão Page Objects
>>>>>>> 9f8b002cf698c2077c3e83ba720106f2d7d20e82
=======
# testes_sauce_demo
Teste automatizados do site Sauce Demo utilizando Robot Framework no padrão Page Objects
>>>>>>> parent of 9b3a71d (Criação dos testes)
