# HelloWorld

Projeto para aprendizado de Elixir/Phoenix

##26/10/2016

1. Começamos os estudos de GenServer como solução para executar rotinas
1. Falamos sobre testes unitários e implementamos alguns testes
1. Vimos o operador `|>` e entendemos como funciona
1. Vimos alguns métodos do módulo `List` e `Map`

##19/10/2016

1. Criamos o projeto: `mix phoenix.new hello_world --database mysql`
1. Criamos o modelo de usuários: `mix pheonix.gen.html User users name age:integer`
1. Usamos o breakpoint para entender como funciona o debugging: `require IEx; IEx.pry`
1. Fizemos um loop no index de usuários para imprimir os nomes no console:

	```elixir
    def index(conn, _params) do
        users = Repo.all(User)
        for item <- users do
        	IO.puts item.name
        end
        render(conn, "index.html", users: users)
    end
    ```
