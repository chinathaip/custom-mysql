SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE SCHEMA IF NOT EXISTS `uwubank` DEFAULT CHARACTER SET utf8 ;
USE `uwubank` ;

-- -----------------------------------------------------
-- Table `Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customers` (
  `idCustomer` VARCHAR(13) NOT NULL,
  `Cust_Fname` VARCHAR(45) NOT NULL,
  `Cust_Lname` VARCHAR(45) NOT NULL,
  `Cust_Email` VARCHAR(45) NOT NULL,
  `Cust_Phone` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Accounts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Accounts` (
  `idAccount` VARCHAR(15) NOT NULL,
  `Cust_ID` VARCHAR(13) NOT NULL,
  `Balance` DOUBLE NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAccount`),
  INDEX `Cust_ID_idx` (`Cust_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Accounts_Customers`
    FOREIGN KEY (`Cust_ID`)
    REFERENCES `Customers` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Transactions` (
  `idTransactions` INT AUTO_INCREMENT NOT NULL,
  `Acco_ID` VARCHAR(15) NOT NULL,
  `Amount` DOUBLE NOT NULL,
  `Timestamp` TIMESTAMP(6) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`idTransactions`),
  INDEX `Acco_ID_idx` (`Acco_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Transactions_Accounts`
    FOREIGN KEY (`Acco_ID`)
    REFERENCES `Accounts` (`idAccount`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;