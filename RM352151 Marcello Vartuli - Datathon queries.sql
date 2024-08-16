--Query tb_pede_tratado

SELECT
  INSTITUICAO_ENSINO_ALUNO_2020 as instituicao_2020,
  NOME as nome,
  IDADE_ALUNO_2020 as idade_2020,
  ANOS_PM_2020 as anos_pm_2020,
  PONTO_VIRADA_2020 as virada_2020,
  safe_cast(inde_2020 as float64) as inde_2020,
  PEDRA_2020 as pedra_2020,
  INSTITUICAO_ENSINO_ALUNO_2021 as instituicao_2021,
  PONTO_VIRADA_2021 as virada_2021,
  safe_cast(inde_2021 as float64) as inde_2021,
  PEDRA_2021 as pedra_2021,
  PONTO_VIRADA_2022 as virada_2022,
  INDE_2022 as inde_2022,
  PEDRA_2022 as pedra_2022
FROM
  `third-zephyr-415317.postech_datathon.tb_pede`
where INSTITUICAO_ENSINO_ALUNO_2020 != 'V202' or INSTITUICAO_ENSINO_ALUNO_2020 is null;


-- Query tb_pede_por_ano
select 
  2020 as ano,
  nome as nome,
  idade_2020,
  virada_2020 as virada,
  inde_2020 as inde,
  pedra_2020 as pedra
from `third-zephyr-415317.postech_datathon.tb_pede_tratado`
union all
select 
  2021 as ano,
  nome as nome,
  idade_2020,
  virada_2021 as virada,
  inde_2021 as inde,
  pedra_2021 as pedra
from `third-zephyr-415317.postech_datathon.tb_pede_tratado`
union all
select 
  2022 as ano,
  nome as nome,
  idade_2020,
  virada_2022 as virada,
  inde_2022 as inde,
  pedra_2022 as pedra
from `third-zephyr-415317.postech_datathon.tb_pede_tratado`