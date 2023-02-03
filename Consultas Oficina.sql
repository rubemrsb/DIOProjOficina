-- Em quantos serviços cada mecânico está trabalhando?

SELECT m.nome AS Nome_do_Mecanico , count(idOS) AS Numero_de_OS
FROM mecanicos AS m, ordem_de_servico AS os
WHERE m.idMecanico = os.idOSMecanico
GROUP BY m.nome; 


-- Qual o valor Total de Peças e Mão de obra de cada Carro?

select DISTINCT concat(Cliente_Fname, ' ', Cliente_Minit, ' ', Cliente_Lname) as Nome_completo, v.marca, v.modelo, p.nome as peca, p.Valor as Valor_da_peca, s.TipoServico, s.Valor, (p.valor + s.valor) as valor_total 
FROM clientes as c, veiculos as v, pecas as p, serviço as s, relacaopecaos as rpos, contempla as rsos, ordem_de_servico as os
WHERE c.idCliente = v.idDono 
and c.idCliente = os.idOSCliente 
and os.idOS = rsos.id_os and rsos.id_servico = s.idServico 
and os.idOS = rpos.id_OS and rpos.id_peca = idPecas;

-- Qual cliente teve o serviço mais caro?

select DISTINCT concat(Cliente_Fname, ' ', Cliente_Minit, ' ', Cliente_Lname) as Nome_Do_Cliente, max(s.Valor + p.Valor) as Maior_valor
FROM clientes as c, veiculos as v, pecas as p, serviço as s, relacaopecaos as rpos, contempla as rsos, ordem_de_servico as os
WHERE c.idCliente = v.idDono 
and c.idCliente = os.idOSCliente 
and os.idOS = rsos.id_os and rsos.id_servico = s.idServico 
and os.idOS = rpos.id_OS and rpos.id_peca = idPecas;


