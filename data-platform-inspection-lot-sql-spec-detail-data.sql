CREATE TABLE `data_platform_inspection_lot_spec_detail_data`
(
	`InspectionLot`                        int(16) NOT NULL,
    `SpecType`                             varchar(100) NOT NULL,
    `UpperLimitValue`                      float(10) NOT NULL,
    `LowerLimitValue`                      float(10) NOT NULL,
    `StandardValue`                        float(10) NOT NULL,
    `SpecTypeUnit`                         varchar(3) NOT NULL,
    `Formula`                              varchar(1000) DEFAULT NULL,
	`CreationDate`              	       date NOT NULL,
	`CreationTime`                         time NOT NULL,
	`LastChangeDate`                       date NOT NULL,
	`LastChangeTime`                       time NOT NULL,
    `IsReleased`                           tinyint(1) DEFAULT NULL,
    `IsLocked`                             tinyint(1) DEFAULT NULL,
    `IsCancelled`                          tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`, `SpecType`),

    CONSTRAINT `DPFMInspectionLotSpecDetailData_fk` FOREIGN KEY (`InspectionLot`) REFERENCES `data_platform_inspection_lot_header_data` (`InspectionLot`),
    CONSTRAINT `DPFMInspectionLotSpecDetailDataSpecTypeUnit_fk` FOREIGN KEY (`SpecTypeUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
