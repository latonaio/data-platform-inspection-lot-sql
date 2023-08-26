CREATE TABLE `data_platform_inspection_lot_component_composition_data`
(
	`InspectionLot`                                 int(16) NOT NULL,
    `ComponentCompositionType`                      varchar(6) NOT NULL,
    `ComponentCompositionUperLimitInPercent`        float(10) NOT NULL,
    `ComponentCompositionLowerLimitInPercent`       float(10) NOT NULL,
    `ComponentCompositionStandardValueInPercent`    float(10) NOT NULL,
	`CreationDate`                       			date NOT NULL,
	`LastChangeDate`                     			date NOT NULL,
	`IsCancelled`		                            tinyint(1) DEFAULT NULL,
	`IsMarkedForDeletion`                           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`, `ComponentCompositionType`),

    CONSTRAINT `DPFMInspectionLotComponentCompositionData_fk` FOREIGN KEY (`InspectionLot`) REFERENCES `data_platform_inspection_lot_header_data` (`InspectionLot`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
