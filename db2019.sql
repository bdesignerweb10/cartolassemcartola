CREATE TABLE `cartolassemcartola`.`tbl_competicoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(60) NOT NULL,
  `valor` DECIMAL NOT NULL,
  `is_default` TINYINT NOT NULL,
  `imagem_fundo` VARCHAR(120) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `cartolassemcartola`.`tbl_competicoes_times` (
  `id_competicao` INT NOT NULL,
  `id_times` INT NOT NULL,
  `id_anos` INT NOT NULL,
  PRIMARY KEY (`id_competicao`, `id_times`, `id_anos`),
  INDEX `fkey_id_times_competicoes_idx` (`id_times` ASC),
  INDEX `fkey_anos_competicoes_idx` (`id_anos` ASC),
  CONSTRAINT `fkey_times_competicoes`
    FOREIGN KEY (`id_times`)
    REFERENCES `cartolassemcartola`.`tbl_times` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkey_anos_competicoes`
    FOREIGN KEY (`id_anos`)
    REFERENCES `cartolassemcartola`.`tbl_anos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkey_competicoes`
    FOREIGN KEY (`id_competicao`)
    REFERENCES `cartolassemcartola`.`tbl_competicoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `cartolassemcartola`.`tbl_competicoes` 
ADD COLUMN `outro_valor` VARCHAR(60) NULL AFTER `imagem_fundo`;

ALTER TABLE `cartolassemcartola`.`tbl_competicoes` 
ADD COLUMN `informacoes` TEXT NOT NULL AFTER `outro_valor`;

ALTER TABLE `cartolassemcartola`.`tbl_competicoes` 
ADD COLUMN `id_mata_mata` INT NULL AFTER `informacoes`,
ADD INDEX `fkey_competicoes_mata_mata_idx` (`id_mata_mata` ASC);
;
ALTER TABLE `cartolassemcartola`.`tbl_competicoes` 
ADD CONSTRAINT `fkey_competicoes_mata_mata`
  FOREIGN KEY (`id_mata_mata`)
  REFERENCES `cartolassemcartola`.`tbl_mata_mata` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;