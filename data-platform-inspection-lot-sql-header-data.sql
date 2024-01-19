CREATE TABLE `data_platform_inspection_lot_header_data`
(
	`InspectionLot`                  int(16) NOT NULL,
	`InspectionLotDate`              date NOT NULL,
	`InspectionPlan`                 int(16) NOT NULL,
	`InspectionPlantBusinessPartner` int(12) NOT NULL,
	`InspectionPlant`  			 	 varchar(4) NOT NULL,
	`Product`  			 			 varchar(40) NOT NULL,
	`ProductSpecification`		 	 varchar(200) DEFAULT NULL,
	`InspectionSpecification`		 varchar(200) DEFAULT NULL,
    `ProductionOrder`                int(16) DEFAULT NULL,
    `ProductionOrderItem`            int(6) DEFAULT NULL,
	`InspectionLotHeaderText`		 varchar(200) DEFAULT NULL,
    `ExternalReferenceDocument`      varchar(100) DEFAULT NULL,
    `CertificateAuthorityChain`      varchar(2000) DEFAULT NULL,
    `UsageControlChain`              varchar(2000) DEFAULT NULL,
	`CreationDate`              	 date NOT NULL,
	`CreationTime`                   time NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`LastChangeTime`                 time NOT NULL,
    `IsReleased`                     tinyint(1) DEFAULT NULL,
    `IsPartiallyConfirmed`           tinyint(1) DEFAULT NULL,
    `IsConfirmed`                    tinyint(1) DEFAULT NULL,
    `IsLocked`                       tinyint(1) DEFAULT NULL,
    `IsCancelled`                    tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`),

    CONSTRAINT `DPFMInspectionLotHeaderDataInspectionPlan_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
	CONSTRAINT `DPFMInspectionLotHeaderDataInspectionPlant_fk` FOREIGN KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMInspectionLotHeaderDataProduct_fk` FOREIGN KEY (`Product`, `InspectionPlantBusinessPartner`, `InspectionPlant`) REFERENCES `data_platform_product_master_quality_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
