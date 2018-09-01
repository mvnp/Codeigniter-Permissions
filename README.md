# Sistema de Permissões para Codeigniter 3

Este repositório que criei tem uma library e um banco de dados com 4 tabelas que foram feitas para gestão de permissões baseado em métodos públicos. Todos os métodos não existentes são escritos automaticamente no banco de dados e ficam disponíveis para gestão de permissões. Pretendo colocar no AdminLTE as views que gerenciam estas permissões.

As permissões ficam estocadas em grupos e usuários são adicionados a estes grupos para poderem acessar estas views (métodos/permissões). Caso ele acesse uma view que não está na permissão dele ou nem mesmo tenha uma permissão ele é redirecionado para uma página que será pública para todos.

## Tabelas

  - rotas
  - rotas_grupos
  - rotas_grupos_metodos
  - rotas_grupos_usuarios

## Instalação

  1. Baixar este projeto atualizado no  [Github](https://github.com/mvnp/Codeigniter-Permissions)
  2. Importar as tabelas dentro de application/database no banco de dados
  
A library começará escrever então, todos os métodos existentes e futuros do seu projeto para que você possa gerenciar os acessos através das views.

![Tela 1](https://raw.githubusercontent.com/mvnp/Codeigniter-Permissions/master/assets/tela_1.png)

![Tela 2](https://raw.githubusercontent.com/mvnp/Codeigniter-Permissions/master/assets/tela_2.png)