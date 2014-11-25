SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresa` (
  `idEmpresa` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `razonSocial` VARCHAR(45) NULL,
  `rFC` VARCHAR(13) NULL,
  `capitalInicial` VARCHAR(45) NULL,
  `flujoEfectivo` VARCHAR(45) NULL,
  `domicilio` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpresa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CatalogoCuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CatalogoCuentas` (
  `idCatalogoCuentas` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `haber` VARCHAR(45) NULL,
  `deber` VARCHAR(45) NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  PRIMARY KEY (`idCatalogoCuentas`),
  INDEX `fk_CatalogoCuentas_Empresa_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_CatalogoCuentas_Empresa`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Credito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Credito` (
  `idCredito` INT NOT NULL AUTO_INCREMENT,
  `limiteCredito` INT NULL,
  `deudaCredito` INT NULL,
  PRIMARY KEY (`idCredito`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `aPaterno` VARCHAR(45) NULL,
  `aMaterno` VARCHAR(45) NULL,
  `prioridad` INT NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  `Credito_idCredito` INT NOT NULL,
  PRIMARY KEY (`idcliente`),
  INDEX `fk_cliente_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_cliente_Credito1_idx` (`Credito_idCredito` ASC),
  CONSTRAINT `fk_cliente_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_Credito1`
    FOREIGN KEY (`Credito_idCredito`)
    REFERENCES `mydb`.`Credito` (`idCredito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ActivoFijo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ActivoFijo` (
  `idActivoFijo` INT NOT NULL,
  `depreciacion` INT NULL,
  `valorActual` INT NULL,
  `descripcionBaja` VARCHAR(45) NULL,
  `fechaUltimaRevision` DATE NULL,
  `fechaRenovacion` DATE NULL,
  PRIMARY KEY (`idActivoFijo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  `ActivoFijo_idActivoFijo` INT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_Producto_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_Producto_Categoria1_idx` (`Categoria_idCategoria` ASC),
  INDEX `fk_Producto_ActivoFijo1_idx` (`ActivoFijo_idActivoFijo` ASC),
  CONSTRAINT `fk_Producto_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `mydb`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_ActivoFijo1`
    FOREIGN KEY (`ActivoFijo_idActivoFijo`)
    REFERENCES `mydb`.`ActivoFijo` (`idActivoFijo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Unidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Unidad` (
  `idUnidad` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `precio` INT NULL,
  `codigo` VARCHAR(50) NULL,
  `existencia` INT NULL,
  `minimoPermitido` INT NULL,
  `maximoPermitido` INT NULL,
  `demanda` INT NULL,
  `eliminado` TINYINT(1) NULL,
  `comision` INT NULL,
  `fechaIngreso` DATE NULL,
  `Producto_idProducto` INT NOT NULL,
  PRIMARY KEY (`idUnidad`),
  INDEX `fk_Unidad_Producto1_idx` (`Producto_idProducto` ASC),
  CONSTRAINT `fk_Unidad_Producto1`
    FOREIGN KEY (`Producto_idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedor` (
  `idProveedor` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `aPaterno` VARCHAR(45) NULL,
  `aMaterno` VARCHAR(45) NULL,
  `razonSocial` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `iP` VARCHAR(45) NULL,
  `puertoComunicacion` VARCHAR(45) NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  PRIMARY KEY (`idProveedor`),
  INDEX `fk_Proveedor_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_Proveedor_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProveedorTieneProducto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ProveedorTieneProducto` (
  `Proveedor_idProveedor` INT NOT NULL,
  `Producto_idProducto` INT NOT NULL,
  PRIMARY KEY (`Proveedor_idProveedor`, `Producto_idProducto`),
  INDEX `fk_ProveedorTieneProducto_Proveedor1_idx` (`Proveedor_idProveedor` ASC),
  INDEX `fk_ProveedorTieneProducto_Producto1_idx` (`Producto_idProducto` ASC),
  CONSTRAINT `fk_ProveedorTieneProducto_Proveedor1`
    FOREIGN KEY (`Proveedor_idProveedor`)
    REFERENCES `mydb`.`Proveedor` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProveedorTieneProducto_Producto1`
    FOREIGN KEY (`Producto_idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrdenCompra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OrdenCompra` (
  `idOrdenCompra` INT NOT NULL,
  `fechaCompra` DATE NULL,
  `fechaEntrega` DATE NULL,
  `subTotal` INT NULL,
  `total` INT NULL,
  `activoFijo` TINYINT(1) NULL,
  `aprobada` TINYINT(1) NULL,
  `Proveedor_idProveedor` INT NOT NULL,
  PRIMARY KEY (`idOrdenCompra`),
  INDEX `fk_OrdenCompra_Proveedor1_idx` (`Proveedor_idProveedor` ASC),
  CONSTRAINT `fk_OrdenCompra_Proveedor1`
    FOREIGN KEY (`Proveedor_idProveedor`)
    REFERENCES `mydb`.`Proveedor` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DatosCompra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DatosCompra` (
  `idDatosCompra` INT NOT NULL,
  `totalEsperado` INT NULL,
  `totalRecibido` INT NULL,
  PRIMARY KEY (`idDatosCompra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProdcutoComprado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ProdcutoComprado` (
  `Producto_idProducto` INT NOT NULL,
  `OrdenCompra_idOrdenCompra` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `DatosCompra_idDatosCompra` INT NOT NULL,
  INDEX `fk_ProdcutoComprado_Producto1_idx` (`Producto_idProducto` ASC),
  INDEX `fk_ProdcutoComprado_OrdenCompra1_idx` (`OrdenCompra_idOrdenCompra` ASC),
  PRIMARY KEY (`Producto_idProducto`, `OrdenCompra_idOrdenCompra`),
  INDEX `fk_ProdcutoComprado_DatosCompra1_idx` (`DatosCompra_idDatosCompra` ASC),
  CONSTRAINT `fk_ProdcutoComprado_Producto1`
    FOREIGN KEY (`Producto_idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProdcutoComprado_OrdenCompra1`
    FOREIGN KEY (`OrdenCompra_idOrdenCompra`)
    REFERENCES `mydb`.`OrdenCompra` (`idOrdenCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProdcutoComprado_DatosCompra1`
    FOREIGN KEY (`DatosCompra_idDatosCompra`)
    REFERENCES `mydb`.`DatosCompra` (`idDatosCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FormaPago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FormaPago` (
  `idFormaPago` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `liquidada` TINYINT(1) NULL,
  `fechaLimitePago` DATE NULL,
  PRIMARY KEY (`idFormaPago`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CompraTienePago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CompraTienePago` (
  `OrdenCompra_idOrdenCompra` INT NOT NULL,
  `FormaPago_idFormaPago` INT NOT NULL,
  PRIMARY KEY (`OrdenCompra_idOrdenCompra`, `FormaPago_idFormaPago`),
  INDEX `fk_CompraTienePago_OrdenCompra1_idx` (`OrdenCompra_idOrdenCompra` ASC),
  INDEX `fk_CompraTienePago_FormaPago1_idx` (`FormaPago_idFormaPago` ASC),
  CONSTRAINT `fk_CompraTienePago_OrdenCompra1`
    FOREIGN KEY (`OrdenCompra_idOrdenCompra`)
    REFERENCES `mydb`.`OrdenCompra` (`idOrdenCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CompraTienePago_FormaPago1`
    FOREIGN KEY (`FormaPago_idFormaPago`)
    REFERENCES `mydb`.`FormaPago` (`idFormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SubCategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SubCategoria` (
  `idSubCategoria` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `Categoria_idCategoria` INT NOT NULL,
  PRIMARY KEY (`idSubCategoria`),
  INDEX `fk_SubCategoria_Categoria1_idx` (`Categoria_idCategoria` ASC),
  CONSTRAINT `fk_SubCategoria_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `mydb`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrdenVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OrdenVenta` (
  `idOrdenVenta` INT NOT NULL,
  `fechaEntrega` DATE NULL,
  `fechaVenta` DATE NULL,
  `subTotal` VARCHAR(45) NULL,
  `total` INT NULL,
  `aprobada` TINYINT(1) NULL,
  `idVendedor` INT NULL,
  `cliente_idcliente` INT NOT NULL,
  `idFactura` VARCHAR(45) NULL,
  PRIMARY KEY (`idOrdenVenta`),
  INDEX `fk_OrdenVenta_cliente1_idx` (`cliente_idcliente` ASC),
  CONSTRAINT `fk_OrdenVenta_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `mydb`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VentaTienePago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VentaTienePago` (
  `FormaPago_idFormaPago` INT NOT NULL,
  `OrdenVenta_idOrdenVenta` INT NOT NULL,
  INDEX `fk_VentaTienePago_FormaPago1_idx` (`FormaPago_idFormaPago` ASC),
  INDEX `fk_VentaTienePago_OrdenVenta1_idx` (`OrdenVenta_idOrdenVenta` ASC),
  PRIMARY KEY (`FormaPago_idFormaPago`, `OrdenVenta_idOrdenVenta`),
  CONSTRAINT `fk_VentaTienePago_FormaPago1`
    FOREIGN KEY (`FormaPago_idFormaPago`)
    REFERENCES `mydb`.`FormaPago` (`idFormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VentaTienePago_OrdenVenta1`
    FOREIGN KEY (`OrdenVenta_idOrdenVenta`)
    REFERENCES `mydb`.`OrdenVenta` (`idOrdenVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DatosVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DatosVenta` (
  `idDatosVenta` INT NOT NULL,
  `vendido` INT NULL,
  `entregado` INT NULL,
  PRIMARY KEY (`idDatosVenta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProductoVendido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ProductoVendido` (
  `OrdenVenta_idOrdenVenta` INT NOT NULL,
  `Producto_idProducto` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `DatosVenta_idDatosVenta` INT NOT NULL,
  PRIMARY KEY (`Producto_idProducto`, `OrdenVenta_idOrdenVenta`),
  INDEX `fk_ProductoVendido_OrdenVenta1_idx` (`OrdenVenta_idOrdenVenta` ASC),
  INDEX `fk_ProductoVendido_Producto1_idx` (`Producto_idProducto` ASC),
  INDEX `fk_ProductoVendido_DatosVenta1_idx` (`DatosVenta_idDatosVenta` ASC),
  CONSTRAINT `fk_ProductoVendido_OrdenVenta1`
    FOREIGN KEY (`OrdenVenta_idOrdenVenta`)
    REFERENCES `mydb`.`OrdenVenta` (`idOrdenVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductoVendido_Producto1`
    FOREIGN KEY (`Producto_idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductoVendido_DatosVenta1`
    FOREIGN KEY (`DatosVenta_idDatosVenta`)
    REFERENCES `mydb`.`DatosVenta` (`idDatosVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProductoFabricacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ProductoFabricacion` (
  `idProductoFabricacion` INT NOT NULL,
  `cantidad` INT NULL,
  `descripcion` VARCHAR(45) NULL,
  `Producto_idProducto` INT NOT NULL,
  PRIMARY KEY (`idProductoFabricacion`),
  INDEX `fk_ProductoFabricacion_Producto1_idx` (`Producto_idProducto` ASC),
  CONSTRAINT `fk_ProductoFabricacion_Producto1`
    FOREIGN KEY (`Producto_idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `idDepartamento` INT NOT NULL,
  `idResonsable` INT NULL,
  `presupuesto` INT NULL,
  `nivelOrganigrama` INT NULL,
  `nombre` VARCHAR(45) NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  INDEX `fk_Departamento_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_Departamento_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Perfil` (
  `idPerfil` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `puesto` VARCHAR(45) NULL,
  PRIMARY KEY (`idPerfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DatosBaja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DatosBaja` (
  `idDatosBaja` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `porcentajeLiquidacion` VARCHAR(45) NULL,
  `fechaBaja` DATE NULL,
  PRIMARY KEY (`idDatosBaja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sueldo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sueldo` (
  `idSueldo` INT NOT NULL,
  `salarioMinimo` INT NULL,
  PRIMARY KEY (`idSueldo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `aPaterno` VARCHAR(45) NULL,
  `aMaterno` VARCHAR(45) NULL,
  `diasVacaciones` VARCHAR(45) NULL,
  `estatus` INT NULL,
  `horasTrabajo` INT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  `Perfil_idPerfil` INT NOT NULL,
  `DatosBaja_idDatosBaja` INT NULL,
  `Sueldo_idSueldo` INT NOT NULL,
  `fechaAlta` DATE NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_Usuario_Departamento1_idx` (`Departamento_idDepartamento` ASC),
  INDEX `fk_Usuario_Perfil1_idx` (`Perfil_idPerfil` ASC),
  INDEX `fk_Usuario_DatosBaja1_idx` (`DatosBaja_idDatosBaja` ASC),
  INDEX `fk_Usuario_Sueldo1_idx` (`Sueldo_idSueldo` ASC),
  CONSTRAINT `fk_Usuario_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `mydb`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Perfil1`
    FOREIGN KEY (`Perfil_idPerfil`)
    REFERENCES `mydb`.`Perfil` (`idPerfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_DatosBaja1`
    FOREIGN KEY (`DatosBaja_idDatosBaja`)
    REFERENCES `mydb`.`DatosBaja` (`idDatosBaja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Sueldo1`
    FOREIGN KEY (`Sueldo_idSueldo`)
    REFERENCES `mydb`.`Sueldo` (`idSueldo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Registro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Registro` (
  `idRegistro` INT NOT NULL,
  `fechaEntrada` DATETIME NULL,
  `fechaSalida` DATETIME NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idRegistro`),
  INDEX `fk_Registro_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_Registro_Usuario1_idx` (`Usuario_idUsuario` ASC),
  CONSTRAINT `fk_Registro_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `mydb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registro_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Notificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Notificaciones` (
  `idNotificaciones` INT NOT NULL,
  `asunto` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `fechaEnvio` DATE NULL,
  `idRemitente` INT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  `leido` TINYINT(1) NULL,
  PRIMARY KEY (`idNotificaciones`),
  INDEX `fk_Notificaciones_Usuario1_idx` (`Usuario_idUsuario` ASC),
  CONSTRAINT `fk_Notificaciones_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipoFalta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipoFalta` (
  `idtipoFalta` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipoFalta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DiaNoTrabajado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DiaNoTrabajado` (
  `idDiaNoTrabajado` INT NOT NULL,
  `fechaInicio` DATE NULL,
  `fechaFin` DATE NULL,
  `aprobado` TINYINT(1) NULL,
  `Usuario_idUsuario` INT NOT NULL,
  `tipoFalta_idtipoFalta` INT NOT NULL,
  PRIMARY KEY (`idDiaNoTrabajado`),
  INDEX `fk_DiaNoTrabajado_Usuario1_idx` (`Usuario_idUsuario` ASC),
  INDEX `fk_DiaNoTrabajado_tipoFalta1_idx` (`tipoFalta_idtipoFalta` ASC),
  CONSTRAINT `fk_DiaNoTrabajado_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DiaNoTrabajado_tipoFalta1`
    FOREIGN KEY (`tipoFalta_idtipoFalta`)
    REFERENCES `mydb`.`tipoFalta` (`idtipoFalta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DatosFactura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DatosFactura` (
  `idDatosFactura` INT NOT NULL AUTO_INCREMENT,
  `razonSocial` VARCHAR(45) NULL,
  `RFC` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `correoElectronico` VARCHAR(45) NULL,
  `calle` VARCHAR(45) NULL,
  `numero` VARCHAR(45) NULL,
  `delegacion` VARCHAR(45) NULL,
  `codigoPostal` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  `personaFisica` TINYINT(1) NULL,
  PRIMARY KEY (`idDatosFactura`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
