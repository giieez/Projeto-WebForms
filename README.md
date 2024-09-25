# 🎯 Objetivo do Projeto

No projeto final foi desenvolvida uma **Agenda Virtual**, na qual contém um menu com quatro componentes, sendo eles: “Página inicial”, “Usuário”, “Contatos” e “Sair”. O projeto foi criado em **WebForms**.

A partir do seu desenvolvimento na aplicação web, na página referente a “Usuário” é possível cadastrar novos usuários para fazer o login na agenda, além de editar e excluir os usuários cadastrados. Já na página de “Contato” é possível fazer a inserção de novos contatos na agenda, através das opções de “inserir”, “editar” e/ou “excluir”.

Além disso, foi criada uma **API** em um novo projeto **Web Application .Net 8**, para integrar a API ao WebForms. 

Sendo assim, a aplicação é feita para interação do usuário, ou seja, ele mesmo pode fazer seu cadastro e inserir suas alterações na agenda.

# 🛠️ Tecnologias Utilizadas

- **💽 SQL Server** – para a criação do banco de dados, utilizado para armazenar os dados inseridos na página da web e fazer os comandos necessários da query nas tabelas.
- **🖥️ Visual Studio** – o desenvolvimento da aplicação foi feito utilizando o software Visual Studio Community.
- **📦 Oracle VM Box (Virtual Box)** – O Docker foi utilizado para armazenar o SQL Server, pois na minha máquina não se adequou à instalação do SQL pelo Windows.
- **🌐 WebForms** – a aplicação foi desenvolvida em WebForms.
- **🔌 API em Web Application .Net 8** – para estender a funcionalidade do projeto com uma API integrada ao WebForms.
- **🎨 HTML e CSS** – Para estilização da página da web.
- **💻 JavaScript** – Para deixar a experiência mais dinâmica e enviar notificações de erro de login do usuário.

# 📝 Instalação

Para a criação do projeto foi utilizada a versão 2019 do **Visual Studio Community** e o projeto **WebForms** foi criado pelo Web Application (.Net framework) na versão 4.7.

Na criação do WebForms, foram inseridas as pastas sugeridas pelo próprio Visual Studio.
Vale ressaltar que o projeto funciona normalmente sem a necessidade de criar pastas manualmente ou usar as pastas sugeridas pelo software.

# 🚀 Rodando a Aplicação

Para rodar a aplicação, basta conectar o código no banco de dados da sua máquina e executar o código na página da web chamada “Login”.
A página Inicial será mostrada caso haja cadastro na Agenda, caso não haja notificará erro de cadastro.

Para integrar a API ao WebForms. foi necessário modificar a inicialização na página de propriedades do projeto, pois ele estava configurado como "único projeto de inicialização". Após ajustar essa configuração para que ambos os projetos fossem iniciados juntos, a API passou a funcionar normalmente.

# 🔗 Conectando no Banco de Dados

- Na pasta “Usuário”, clique em “Design” e depois em “usuário datasource”, e após isso em “criar conexão” e selecione o seu banco de dados. Não esqueça de verificar as propriedades do banco de dados para garantir que o caminho está correto. Caso não esteja, modifique-o.
- Siga exatamente os mesmos passos na pasta “Contatos”.

# 🐛 Problemas Enfrentados

- Um problema enfrentado foi o caminho do banco de dados na parte das “propriedades”. A página da web não conseguia se conectar com o banco. O caminho deveria estar mais ou menos da seguinte forma:

"DataSource=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gisel\source\repos\WebFormsAgendaFinal\WebFormsAgendaFinal\App_Data\Database1.mdf;Integrated Security=True"

- A parte “contato” da aplicação não estava inserindo novos contatos, pois faltou o comando `GridView1.Databind();` para exibir os valores dos dados na tabela e permitir a seleção, classificação e edição dos itens inseridos.
- O fato da aplicação ter sido desenvolvida em WebForms dificultou a conexão da aplicação com a API. Foi feita a tentativa de criar um novo projeto de API .Net 8 e inseri-lo na aplicação da Agenda, porém, o mesmo não foi bem-sucedido e quebrou o código. Após modificar a inicialização na página de propriedades para que ambos os projetos fossem iniciados juntos, a API funcionou corretamente.

# 🛠 Próximos Passos

Os próximos passos deste projeto são o estudo de outras possibilidades para a integração da API na mesma aplicação, tentando utilizar o bootstrap padrão do framework sem causar erro no backend, e a inserção de novas funcionalidades na aplicação, transformando a agenda telefônica em uma agenda geral com funções para marcação e edição de compromissos, notificação de lembrete dos compromissos, entre outros.

Além disso, é desejável melhorar o front-end para deixá-lo visualmente mais agradável, com a possibilidade de adicionar um template.

# 👩‍💻 Contribuintes

O projeto foi desenvolvido por **Gisele Pires**, a única contribuinte do mesmo.

# 📜 Licenças

Todas as licenças permitidas. O projeto pode ser utilizado para fins educacionais e comerciais, e poderá ser alterado por outros contribuintes.
