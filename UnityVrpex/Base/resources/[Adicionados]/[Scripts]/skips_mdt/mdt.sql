-- Copiando estrutura para tabela ghrp.mdt_historico
DROP TABLE IF EXISTS `mdt_historico`;
CREATE TABLE IF NOT EXISTS `mdt_historico` (
  `user_id` int(11) DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
