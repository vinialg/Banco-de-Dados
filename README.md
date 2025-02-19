Mapeamento de entidade e relacionamentos

Funcionários
	No modelo original, a tabela “funcionário” se tratava de uma super entidade com subclasses dentro de si, representando algumas especializações que um funcionário poderia ter. Portanto, foi aplicado a especialização de uma entidade, onde cada subclasse se tornou uma tabela própria. 
	A tabela possuí o CPF do funcionário como chave primária, um dado único para cada um dos colaboradores, desta forma as tabelas “Técnico”, ”Auxiliar” e “Encarregado” carregam este atributo como chave estrangeira.
Técnico: Essa tabela armazena o dado de especialização que é conveniente ao técnico, mas não necessariamente aos outros funcionários, assim sendo, foi aplicada a especialização. Esta entidade também carrega o “CPF_funcionario” como chave estrangeira.
Auxiliar: Essa tabela armazena o atributo que informa qual tarefa o funcionário auxilia, que é importante para o auxiliar, mas não necessariamente para os outros funcionários, assim sendo, foi aplicada a especialização. Esta entidade também carrega o “CPF_funcionario” como chave estrangeira.
Encarregado: Essa entidade possui uma relação com a tabela setor, por isso carrega o “ID_Setor” dentre seus atributos, assim como o atributo seu atributo de responsabilidade e o CPF do funcionário. 

Treinamento
	Essa tabela armazena dados de treinamentos de funcionários, de forma que possam desempenhar melhor em suas funções. Seus atributos são ID_Curso, Carga horária, e Conteúdo do Curso. Essa tabela se relaciona com funcionários através da entidade AtendeCurso.
	AtendeCurso: Esta entidade segura duas chaves estrangeiras, a do CPF de um usuário originário da tabela funcionário, e o ID_Curso, chave estrangeira que referência a tabela Treinamento. O relacionamento entre Funcionários e Treinamento foi traduzido para a tabela intermediária AtendeCurso, utilizando as chaves primárias das duas entidades, seguindo regra de transformação entre diagramas.

Setor
	Essa tabela representa os setores da organização e seus respectivos responsáveis. O atributo ID_Setor é a chave primária, identificando cada setor de forma única. Um setor pertence a uma planta, por isso, em sua relação com a entidade plantas, ele passa o ID_Setor como chave estrangeira. Isso ocorre em todas as relações originais que envolvem o setor, porém, no novo modelo é compartilhada sua chave primária.

Plantas
	Essa tabela armazena informações sobre as unidades operacionais (plantas) da organização. O atributo ID_Planta é a chave primária, identificando cada planta de forma única. Relaciona-se com Setor por meio do atributo ID_Setor (chave estrangeira), indicando qual setor pertence a planta. Também possui relacionamento com Fornecedor através do atributo ID_Fornecedor (chave estrangeira), indicando qual fornecedor está vinculado à planta. Além disso, se relaciona com Contrato, por meio do atributo ID_Contrato (chave estrangeira), indicando os contratos abertos da planta com clientes.

Contrato
	Essa é a tabela intermediária entre Plantas e Clientes, a transformação foi realizada seguindo a regra de normalização, com a criação de uma tabela separada para armazenar dados dos contratos e segurando as chaves primárias de ambas as entidades de origem, evitando redundância e assegurando a integridade dos dados.
Cliente	
Essa entidade possui informações como Nome, CNPJ, Email e Endereço, que são dados importantes para identificação e contato com os clientes, sendo o ID_Cliente sua chave primária. Essa relaciona-se com a tabela Contrato, garantindo que um cliente tenha pelo menos um contrato, e uma planta tenha vários contratos com vários clientes.

Fornecedor
	A tabela Fornecedor armazena dados sobre os fornecedores que fornecem produtos para as plantas, no caso, a tabela Planta recebe a foreign key da chave primária de Fornecedor. A chave primária é o atributo ID_Fornecedor, que identifica de forma única cada fornecedor. Relaciona-se com Produto por meio do atributo ID_Produto (chave estrangeira), indicando os produtos fornecidos por cada fornecedor.

Produto
	Essa tabela é a especialização da entidade Fornecedor do diagrama original, do qual mantinha o ID do produto e suas informações. Contudo, durante a transformação para o Modelo Relacional, criamos uma entidade Produto de forma que seja possível atender regras da Segunda Forma Normal, ou seja, todos os atributos do produto são dependentes da chave primária ID_Produto, do qual se relaciona com o Fornecedor, passando sua chave primária como estrangeira. A transformação segue a regra de relacionamento 1:N, com um fornecedor podendo fornecer múltiplos produtos, mas cada produto sendo vinculado a um único fornecedor.

Gerencia
Essa tabela representa o relacionamento entre funcionários e plantas, indicando quais funcionários são responsáveis pela gestão de determinadas plantas. Sendo assim, a entidade “Gerencia” é uma tabela intermediária para representar o relacionamento original entre Funcionários e Planta, recebendo as chaves primárias das tabelas de origem como estrangeiras. 
