CREATE TABLE `data_platform_inspection_lot_header_data`
(
	`InspectionLot`                  int(16) NOT NULL,
	`InspectionPlan`                 int(16) NOT NULL,
	`InspectionPlantBusinessPartner` int(12) NOT NULL,
	`InspectionPlant`  			 	 varchar(4) NOT NULL,
	`Product`  			 			 varchar(40) NOT NULL,
	`ProductSpecification`		 	 varchar(200) DEFAULT NULL,
	`InspectionSpecification`		 varchar(200) DEFAULT NULL,
    `ProductionOrder`                int(16) DEFAULT NULL,
    `ProductionOrderItem`            int(6) DEFAULT NULL,
	`InspectionLotHeaderText`		 varchar(200) DEFAULT NULL,
	`CreationDate`                   date NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`IsCancelled`		             tinyint(1) DEFAULT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`),

    CONSTRAINT `DPFMInspectionLotHeaderData_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMInspectionLotHeaderDataInspectionPlan_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
    CONSTRAINT `DPFMInspectionLotHeaderDataProduct_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_quality_data` (`Product`, `BusinessPartner`, `Plant`)
	
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
