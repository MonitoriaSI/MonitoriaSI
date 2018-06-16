# README

## Branchs
1. **master**: É a versão que será colocada em produção. Não é recomendado utilizar ela como base para desenvolvimento pois ela não receberá atualizações frequentes e provavelmente terá configurações diferentes como por exemplo o banco de dados. A branch ***master*** será atualizada apenas quando for finalizada cada release.
1. **develop** ![](https://travis-ci.org/MonitoriaSI/MonitoriaSI.svg?branch=develop) : É a versão oficial para desenvolvimeto, porém os **commits** ainda não entrarão diretamente nela através do ***push***. Conforme descrito no [Guia de controle de versão](https://github.com/talithamedeiros/MonitoriaSI/wiki/Guia-de-Controle-de-Vers%C3%A3o#atividades-do-desenvolvedor), deve-se enviar os arquivos codificados em uma ***branch*** denominada **feature/\<numeroDaIssueEmQueEstaTrabalhando\>** (Ex: feature/2). Somente após os testes e a revisão do gerente que essa ***feature*** será integrada a branch **develop** através de um ***Pull request***.
1. **feature/\<Numero\>**: É a versão enviada pelo desenvolver para o repositório remoto(***origin***). Após os testes e a revisão ela será integrada em **develop**.

## Guia para clonar o projeto

##### Faça o clone do repositório.
```git
git clone https://github.com/talithamedeiros/MonitoriaSI.git
```
##### Acesse o diretório do projeto MonitoriaSI e execute o **bundle install** para fazer o download das bibliotecas utilizadas pelo Rails.
```git
cd MonitoriaSI
bundle install
```
##### Escolha uma issue para trabalhar e crie uma nova branch **feature/[nº da issue]**. Ex: "feature/34". Quando concluir faça o **push** dessa issue para o repositório remoto(**origin**).

##### Lembre-se de quando esta com um projeto clonado pela primeira vez é necessário criar sua própria base de dados.
```rails
rails db:create
rails db:migrate
```

##### Quando necessário for exclua a sua base e rode o comando acima novamente.
```rails
rails db:drop
```
