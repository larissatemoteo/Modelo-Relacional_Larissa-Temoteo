## Documentação Simplificada do Modelo Relacional

**Projeto:** Abandono Zero

**Data:** 2024-05-11

**Autor:** Larissa dos Santos Temoteo

**Objetivo:** Ilustrar a configuração de dados inter-relacionados no projeto Abandono Zero, cujo propósito é estabelecer um conjunto de dados sobre os fatores determinantes da adoção, compra e abandono de animais, facilitando pesquisas futuras sobre o tema. A representação a seguir delineia as entidades, seus atributos e as conexões entre elas, oferecendo uma visão organizada e compreensível do banco de dados.
&nbsp;&nbsp;&nbsp;&nbsp; Abaixo encontra-se os dois arquivos para baixar, sobre a modelagem relacional e a física:

- [Modelagem Relacional](https://github.com/Leoogata/Modelo-Relacional-Leonardo-Ogata/blob/main/modelagem-relacional.xml)
- [Modelagem Física](https://github.com/Leoogata/Modelo-Relacional-Leonardo-Ogata/blob/main/modelagem-fisica.sql)

## Entidades

### user
- **Descrição**: Guarda informações dos usuários, como nome e email.
- **Primary Key**: id
- **Atributos**: 
    - **id**: `INTEGER` (Chave primária, id único)
    - **name**: `VARCHAR(50)` (Nome do usuário)
    - **email**: `VARCHAR(50)` (Email do usuário)
    -**password**: `VARCHAR (25)` (Senha do usuário) 

   
### general_forms
  - **Descrição**: Armazena detalhes gerais sobre o usuário, incluindo informações demográficas e socioeconômicas.
- **Chave Primária**: id
- **Chave Estrangeira**: `id_users` referenciando `users.id` `(UNIQUE)`.
- **Atributos**:
    - **id**: `INTEGER` (Chave primária, identificador único)
    - **age**: `INTEGER` (Idade do usuário)
    - **gender**: `VARCHAR(30)` (Gênero do usuário)
    - **education**: `VARCHAR(50)` (Escolaridade do usuário)
    - **type_of_housing**: `VARCHAR(30)` (Tipo de moradia do usuário)
    - **family_constitution**: `VARCHAR(50)` (Constituição familiar)
    - **home_income**: `DECIMAL(10,2)` (Renda familiar mensal)
    - **residents**: `INTEGER` (Quantidade de pessoas que moram na casa)
    - **address**: `VARCHAR(30)` (Endereço do usuário)
    - **type_of_forms**: `VARCHAR(30)` (Qual formulário o usuário vai responder)


### forms_have_dogs
- **Descrição**: 
Registra informações sobre o cão mais recente que o usuário possui.
- **Chave Primária**: `id`
- **Chave Estrangeira**: `id_users` referenciando `users.id`.
- **Atributos**:
    - **id**: `INTEGER` (Chave primária, identificador único)
    - **dog_name**: `VARCHAR(30)` (nome do cão)
    - **gender**: `VARCHAR(20)` (gênero do cão)
    - **who_belongs**: `VARCHAR(20)` (a quem o cão pertence)
    - **castrated**: `VARCHAR(10)` (Se o cão foi castrado)
    - **dog_age**: `INTEGER` (tempo que o cão está com você)
    - **first_dog**: `VARCHAR(30)` (Se o cão é o primeiro da família)
    -**have_other_pets**: `INTENGER` (Se o usuário possui outros pets)
    - **age_dog**: `INTEGER` (idade do cão)
    - **breed**: `VARCHAR(20)` (raça do cão)
    - **where_got**: `VARCHAR(30)` (De onde o cão veio)
    - **pride**: `DECIMAL` (Quanto foi pago pelo cão)
    - **dog_age_arrived**: `INTEGER` (Idade que o cão tinha ao chegar na casa)
    - **dog_personality**: `VARCHAR (30)` (Características da personalidade do cão)
    - **motivation**: `VARCHAR(80)` (Por que decidiram ter o cachorro)
    - **characteristics**: `VARCHAR(50)` (Mais informações relevantes sobre o cão)
    - **couldn't_keep**: `VARCHAR(30)` (O usuário teve um cão que não pode manter)
    - **vet**: `VARCHAR(10)` (Se o cachorro foi ao veterinário)
    - **about**: `VARCHAR(50)` (Mais informações sobre o cachorro)


### forms_had_dogs
- **Descrição**: Armazena detalhes sobre o cão mais recente que o usuário teve.
- **Chave Primária**: `id`
- **Chave Estrangeira**: `id_users` referenciando `users.id`.
- **Atributos**:
    - **id**: `INTEGER` (Chave primária, identificador único)
    - **dogs_name**: `VARCHAR(30)` (nome do cão)
    - **who_belonged**: `VARCHAR(30)` (a quem o cão pertencia)
    - **dog_personality**: `VARCHAR(50)` (personalidade do cão)
    - **duration_time**: `INTENGER` (tempo com o cão)
    - **first_dog**: `VARCHAR(10)` (Se foi o primeiro cão)
    - **are_other_pets**: `VARCHAR(30)` (outros pets)
    - **pet_age**: `INTENGER` (idade que obtiveram o cão)
    - **castrated**: `VARCHAR(30)` (Se o cão é castrado)
    - **when_castrated**: `INTENGER` (Quando o cão foi castrado)
    - **breed**: `VARCHAR(30)` (raça do cão)
    - **where_came_from**: `VARCHAR(30)` (de onde o cão veio)
    - **price**: `DECIMAL` (Se pagaram pelo cão)
    - **motivation**: `VARCHAR(30)` (quando o cão foi pego)
    - **characteristics**: `VARCHAR(50)` (Características do cão)
    - **who_decided**: `VARCHAR(30)` (Quem participou da decisão de ter o cão)
    - **most_like**: `VARCHAR(50)` (Características que mais gostava do cão)
    - **dont_like**: `VARCHAR(30)` (Características que mais desgostava do cão)
    - **vet**: `VARCHAR(10)` (Se o cachorro foi ao veterinário)
    - **vet_motivation**: `VARCHAR(50)` (Motivo do cachorro ter ido ao veterinário)
    - **stopped_living**: `VARCHAR(30)` (Quando o cachorro deixou de viver com a família)
    - **age_dog_was**: `VARCHAR(30)`(Idade que o cachorro tinha)
    - **reason_for_disconnection**: `VARCHAR(50)`(Motivo de deixar de conviver com o cão)

### forms_want_dogs
- **Descrição**: Armazena detalhes sobre o cão que o usuário deseja ter.
- **Chave Primária**: `id`
- **Chave Estrangeira**: `id_users` referenciando `users.id`.
- **Atributos**:
    - **id**: `INTEGER` (Chave primária, identificador único)
    - **dog_size**: `VARCHAR(10)` (porte do cachorro)
     - **dog_coat**: `VARCHAR(10)` (pelagem do cachorro)
    - **dog_color**: `VARCHAR(20)` (cor do cão)
    - **dog_gender**: `VARCHAR(20)` (gênero do cão)
    - **dog_age**: `INTENGER` (idade que deseja do cão)
    - **breed**: `VARCHAR(20)` (raça do cão)
    - **why**: `VARCHAR(30)` (porque gostaria de ter o cão)
    - **name**: `VARCHAR(30)` (Já pensou em um nome para o cachorro)
    -**intend_to_buy**: `VARVHAR(30)`: (Se pretender comprar ou adotar)
    - **when_have**: `VARCHAR(10)` (quando pretende ter um cão)
    - **which_personality**: `VARCHAR(100)` (personalidade do cão)
    - **research_expense**: `VARCHAR(30)` (Se o usuário pesquisou sobre ter animais)

### null_forms
- **Descrição**: Armazena detalhes sobre usuários que não querem ter um cão.
- **Chave Primária**: `id`
- **Chave Estrangeira**: `id_users` referenciando `users.id`.
- **Atributos**:
    - **id**: `INTEGER` (Chave primária, identificador único)
    - **dont_want**: `VARCHAR(30)` (motivos pelos quais o usuário não quer ter um cão)


## Relacionamentos

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;As conexões entre as entidades são essenciais para compreender a interligação dos dados e como as operações de CRUD (Criar, Ler, Atualizar, Excluir) impactam essas entidades. A seguir estão os relacionamentos detalhados entre as entidades:

- **user**:
  - **general_forms**: Um usuário pode ter apenas um formulário geral (`1:1`). A chave estrangeira `id_users` na tabela general_forms agora é única para refletir essa relação.
   - **user_forms**: Um usuário pode ter apenas um user form (`1:1`). 
  - **forms_have_dogs**: Um usuário pode ter vários formulários de cães que já possui (`1:N`).
  - **forms_had_dogs**: Um usuário pode ter vários formulários de cães que já teve (`1:N`).
  - **forms_want_dogs**: Um usuário pode ter vários formulários de cães que deseja adotar (`1:N`).
  - **forms_null**: Um usuário pode ter vários formulários de cães que nunca conviveu ou não tem vontade de ter (`1:N`).

- **general_forms**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.

- **user_forms**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.

- **forms_have_dogs**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.
  - Relacionado com `user_forms` através da chave estrangeira `id_forms_have_dogs`.
  - Relacionado com `dog_forms_have` através da chave estrangeira `id_forms_have_dogs`.

- **forms_had_dogs**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.

- **forms_want_dogs**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.
  - Relacionado com `user_forms` através da chave estrangeira `id_forms_want_dogs`.
  - Relacionado com `dog_forms_want` através da chave estrangeira `id_forms_want_dogs`.

- **forms_null**:
  - Relacionado diretamente com `users` através da chave estrangeira `id_users`.


## Regras de Negócio

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;As diretrizes operacionais são princípios que garantem a coerência dos dados e a funcionalidade do sistema. As diretrizes operacionais para o projeto Abandono Zero são:
### 1. Validação de Dados

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Antes que um usuário possa submeter um formulário, todos os campos obrigatórios devem ser preenchidos.

### 2. Consistência de Informações

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As informações fornecidas pelos utilizadores devem manter uniformidade entre diferentes formulários. Por exemplo, o nome do cão deve ser consistente em todas as seções relacionadas a ele.

### 3. Restrições de Edição

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Após a submissão de um formulário, as informações já registradas não podem ser editadas pelo usuário, exceto em situações específicas autorizadas pela administração.

### 4. Política de Privacidade

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Os dados pessoais dos usuários são protegidos e só podem ser acessados por funcionários autorizados.

### 5. Regra de Unicidade

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Todos os campos dos formulários devem ser preenchidos pelo usuário.

### 6. Regra de Atualização

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Os usuários têm a possibilidade de atualizar as suas informações a qualquer momento por meio do formulário geral.


## Diagrama

![Diagrama](assets/Modelo-relaconal.png)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Este diagrama ilustra as conexões entre diferentes entidades no modelo relacional. Cada entidade é representada por um retângulo, e as linhas entre elas representam os relacionamentos.

## Conclusão

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Esta arquitetura de banco de dados foi concebida para atender aos requisitos do sistema do projeto Abandono Zero, fornecendo uma maneira eficiente de administrar as informações dos utilizadores e suas respostas nos formulários. O modelo descreve as entidades, seus atributos e as conexões entre elas, oferecendo uma representação organizada e clara do banco de dados. As diretrizes operacionais garantem a integridade e consistência dos dados.





