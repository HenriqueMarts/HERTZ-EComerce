CREATE database IF NOT EXISTS hertz DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `hertz`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  `idCliente` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `foto_cliente` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categorias (
  `idCategoria` INT NOT NULL,
  `tipo` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hertz`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Produtos (
  `idProduto` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `preco` FLOAT NOT NULL,
  `foto_produto` VARCHAR(255) NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Categorias_idCategorias` INT NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_Produtos_Cliente_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Produtos_Categorias1_idx` (`Categorias_idCategorias` ASC) VISIBLE,
  CONSTRAINT `fk_Produtos_Cliente`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES Cliente (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produtos_Categorias1`
    FOREIGN KEY (`Categorias_idCategorias`)
    REFERENCES Categorias (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;






