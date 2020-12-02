/*=======================================[1]========================================
Liste a média salarial de empregado pelo seu numero de funcão respectiva,
ou seja aqueles que tem 1 função tem uma média x e aqueles com 2 tem outra media x
===================================================================================*/
select 	E.Qtde_Funcoes, avg(F.salario)
from 	Empregado E, Funcionario F
where 	E.CPF_E = F.CPF_F
group 	by E.Qtde_Funcoes;

/*=======================================[2]========================================
			Liste a qtde de animais registrados de cada especie
===================================================================================*/
select	R.Especie, count(R.Especie)
from	Raca R
group by R.Especie;

/*=======================================[3]========================================
Liste a quantidade de animais registrados em cada tipo de porte de especie "Canino"
===================================================================================*/
select	R.porte, Count(R.porte) as qtde
from 	Animal A, Raca R
where 	R.Race_ID = A.Race_ID
group by R.Especie, R.porte
having 	R.Especie = 'Canino';

/*=======================================[4]========================================
			Liste o nome dos animais no qual o seu dono(Cliente)
				não tem como o começo do seu cpf o numero '1'
===================================================================================*/
select	A.nome
from	Animal A
where	A.CPF_C	not in	(Select	C.CPF_C
						from	Cliente C
						where	C.CPF_C like '1%');

/*=======================================[5]========================================
				Liste todos os serviços prestados para os animais
					que não são da raça 'Felino' registrados
===================================================================================*/
select	S.Nome_Servico
from 	Servico S
where 	S.Servico_ID in (Select	AtS.Servico_ID
						from	Animal_tem_Servico AtS
                        where	AtS.Animal_ID   in	(select	A.Animal_ID
													from	Animal A
                                                    where	A.Race_ID not in 	(Select R.Race_ID
																				from	Raca R
																				where	R.especie = 'Felino'
																				)
													)
						);
                        
/*=======================================[6]========================================
			 Liste as funções que o Empregado não faz,
			  onde a primeira letra do CPF dele é '4'
===================================================================================*/
select 	F.nome
from 	Funcao F
where 	F.Funct_ID not in 	(select	EtF.Funct_ID
							from	Empregado_tem_Funcao EtF
							where	EtF.CPF_E like '4%'); 

/*=======================================[7]======================================== 
  Liste a soma dos Gastos médios mensais(Manutenção) dos veiculos no qual não são
  utilizados para transportar animais, ou seja os que o custo de entrega for NULL
===================================================================================*/
select	sum(V.Manutencao) as Gasto_RS
from	Veiculo V	
where	V.Placa	not in	(select	M.Placa_veiculo
						from	Motorista M
						where	M.Custo_Entrega is not NULL);

/*=======================================[8]======================================== 
			Liste o nome dos produtos que não foram utilizados no
				serviço feito para o animal com o nome de 'Mia'
===================================================================================*/
select 	P.nome
from	Produto P
where	P.Produto_ID in	(select	SuP.Produto_ID
						from	Servico_Usa_Produto SuP
                        where	SuP.Servico_ID in	(select	AtS.Servico_ID
													from	Animal_tem_Servico AtS
                                                    where	AtS.Animal_ID not in	(select	A.Animal_ID
																					from	Animal A
																					where	A.nome = 'Mia')
                                                    )
                        );

/*=======================================[9]======================================== 
Liste a soma do salario dos empregados que se juntaram na Loja antes do ano de 2020
===================================================================================*/
select	sum(F.salario)
from	Funcionario F
where	F.CPF_F	in	(Select	E.CPF_E
					from	Empregado E
					where	year(E.Data_Inicio) < '2020-01-01');
                    
/*=======================================[10]======================================== 
	Liste o nomes dos clientes que não tem um animal da especie 'Reptil'
===================================================================================*/
select	C.nome
from	Cliente C
where	C.CPF_C	in	(select	A.CPF_C
					from	Animal A
                    where	A.Race_ID	not	in	(select	R.Race_ID
												from	Raca R
												where	R.especie = 'Reptil')
					);
