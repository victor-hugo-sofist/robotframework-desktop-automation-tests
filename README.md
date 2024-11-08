# TESTES AUTOMATIZADOS DESKTOP - SOFIST - ROBOT FRAMEWORK

## TECNOLOGIAS
- **PYTHON** - Linguagem de programação
- **PIP** - Gerenciador de pacotes
- **ROBOT FRAMEWORK** - Framework de testes Web, API e desktop
- **LIBRARIES** - Sikuli e ImageHorizonLibrary

## INSTALANDO AS DEPENDÊNCIAS

### Dependências PIP
Execute:
> `pip install -r requirements.txt`

### Extensão Robot Framework

Instale a extensão do Robot Framework no VS-CODE.

Para isto, procure pela extensão `d-biehl.robotcode`

### Dependências Java - Sikuli Library

A biblioteca Sikuli depende da instalação do JDK.

Instale o JDK-Java 8 ou superior. [Link para download.](https://www.oracle.com/java/technologies/downloads/#jdk20-windows)

Crie a variável de ambiente `JAVA_HOME` e insira o diretório do local onde foi instalado o JDK.

Exemplo: `C:\Program Files\Java\jdk-20`

## Executando todos os testes
>`robot tests`

## Executando todos os testes e em caso de falha pausar a execução
>`robot --exitonfailure tests`

## Executando todos os testes com a descrição

### Exemplos

>`robot -i sum tests`

>`robot -i subtract tests`

>`robot -i multiplication tests`

>`robot -i division tests`

## Ajuste de resolução

Para executar e desenvolver os testes automatizados é preciso ajustar a resolução do computador.

Use a resolução de 1366x768 (resolução HD) e ajuste de escala e layout para 100%

## Configurando o Sikuli para não gerar logs

Crie a variável de ambiente a seguir para evitar a criação de logs do Sikuli. 

>`export DISABLE_SIKULI_LOG=1`

## Link para download do SikulixIDE

Para obtenção das coordenadas de porções da tela é útil utilizar o software SikulixIDE, a partir da função **Region**.

[Página para download do SikuliX.](http://www.sikulix.com/)

