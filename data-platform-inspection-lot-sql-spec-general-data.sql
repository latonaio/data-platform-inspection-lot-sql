CREATE TABLE `data_platform_inspection_lot_spec_general_data`
(
	`InspectionLot`                        int(16) NOT NULL,
    `HeatNumber`                           varchar(20) NOT NULL,
	`CreationDate`              	       date NOT NULL,
	`CreationTime`                         time NOT NULL,
	`LastChangeDate`                       date NOT NULL,
	`LastChangeTime`                       time NOT NULL,
    `IsReleased`                           tinyint(1) DEFAULT NULL,
    `IsLocked`                             tinyint(1) DEFAULT NULL,
    `IsCancelled`                          tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`),

    CONSTRAINT `DPFMInspectionLotSpecGeneralData_fk` FOREIGN KEY (`InspectionLot`) REFERENCES `data_platform_inspection_lot_header_data` (`InspectionLot`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
