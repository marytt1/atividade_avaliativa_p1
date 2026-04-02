## Explicação Breve da Arquitetura Adotada

O projeto foi estruturado nas seguintes camadas principais:

* **Views:** Responsáveis exclusivamente pela interface visual e interação com o usuário. Foram construídas utilizando `StatelessWidget` e `StatefulWidget` (ex: `HomePage`, `LoginPage`, `CadastroPage`).
  
* **ViewModels:** Responsáveis pela regra de negócio, controle de estado das telas e validação dos formulários. Elas interagem com a interface utilizando o padrão `ChangeNotifier` (ex: `LoginViewModel`, `CadastroViewModel`).
  
* **Models:** Definem a estrutura dos dados utilizados no aplicativo. O `UsuarioModel`, determina que cada usuário deve possuir um nome, e-mail e senha.
  
* **Data:** Camada que gerencia o banco de dados temporário. O `UsuarioMockStore` utiliza uma lista em memória e métodos estáticos para armazenar, ler e validar os usuários cadastrados enquanto o aplicativo está em execução.
