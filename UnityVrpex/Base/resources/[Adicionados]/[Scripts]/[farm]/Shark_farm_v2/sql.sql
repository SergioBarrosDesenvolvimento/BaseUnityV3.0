-- Copiando estrutura para tabela shark_farm
CREATE TABLE IF NOT EXISTS `shark_farm` (
  `Org` varchar(50) DEFAULT NULL,
  `Lvl` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela shark_farm: ~32 rows (aproximadamente)
INSERT IGNORE INTO `shark_farm` (`Org`, `Lvl`) VALUES
	('Drogas15', 1),