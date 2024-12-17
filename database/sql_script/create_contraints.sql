
ALTER TABLE departments MODIFY `Department ID` BIGINT ;
ALTER TABLE patients MODIFY `Patient Name` VARCHAR(255) NOT NULL;
ALTER TABLE patients MODIFY `Gender` VARCHAR(50) NOT NULL;
ALTER TABLE patients MODIFY `Age` INT NOT NULL;
ALTER TABLE patients MODIFY `City ID` BIGINT NOT NULL;
ALTER TABLE providers MODIFY `Provider Name` VARCHAR(255) NOT NULL;
ALTER TABLE providers MODIFY `Gender` VARCHAR(50) NOT NULL;
ALTER TABLE providers MODIFY `Nationality` VARCHAR(50) NOT NULL;
ALTER TABLE visits MODIFY `Date of Visit` VARCHAR(10) NOT NULL;
ALTER TABLE visits MODIFY `Patient ID` BIGINT NOT NULL;
ALTER TABLE visits MODIFY `Provider ID` BIGINT NOT NULL;
ALTER TABLE visits MODIFY `Department ID` BIGINT NOT NULL;
ALTER TABLE visits MODIFY `Service Type` VARCHAR(255) NOT NULL;
ALTER TABLE visits MODIFY `Treatment Cost` DECIMAL(10, 2) NOT NULL;


ALTER TABLE departments ADD PRIMARY KEY (`Department ID`);
ALTER TABLE diagnoses ADD PRIMARY KEY (`Diagnosis ID`);
ALTER TABLE insurance ADD PRIMARY KEY (`Insurance ID`);
ALTER TABLE procedures ADD PRIMARY KEY (`Procedure ID`);
ALTER TABLE patients ADD PRIMARY KEY (`Patient ID`);
ALTER TABLE providers ADD PRIMARY KEY (`Provider ID`);
ALTER TABLE cities ADD PRIMARY KEY (`City ID`);

-- ALTER TABLE departments ADD CONSTRAINT unique_department UNIQUE (`Department`);
-- ALTER TABLE diagnoses ADD CONSTRAINT unique_diagnosis UNIQUE (`Diagnosis`);
-- ALTER TABLE insurance ADD CONSTRAINT unique_insurance_provider UNIQUE (`Insurance Provider`);
-- ALTER TABLE procedures ADD CONSTRAINT unique_procedure UNIQUE (`Procedure`);

ALTER TABLE patients ADD CONSTRAINT fk_city FOREIGN KEY (`City ID`) REFERENCES cities(`City ID`);
ALTER TABLE visits ADD CONSTRAINT fk_patient FOREIGN KEY (`Patient ID`) REFERENCES patients(`Patient ID`);
ALTER TABLE visits ADD CONSTRAINT fk_provider FOREIGN KEY (`Provider ID`) REFERENCES providers(`Provider ID`);
ALTER TABLE visits ADD CONSTRAINT fk_department FOREIGN KEY (`Department ID`) REFERENCES departments(`Department ID`);
ALTER TABLE visits ADD CONSTRAINT fk_diagnosis FOREIGN KEY (`Diagnosis ID`) REFERENCES diagnoses(`Diagnosis ID`);
ALTER TABLE visits ADD CONSTRAINT fk_procedure FOREIGN KEY (`Procedure ID`) REFERENCES procedures(`Procedure ID`);
ALTER TABLE visits ADD CONSTRAINT fk_insurance FOREIGN KEY (`Insurance ID`) REFERENCES insurance(`Insurance ID`);

ALTER TABLE patients ADD CONSTRAINT check_age CHECK (`Age` > 0);
ALTER TABLE providers ADD CONSTRAINT check_provider_age CHECK (`Age` > 0);
ALTER TABLE visits ADD CONSTRAINT check_satisfaction CHECK (`Patient Satisfaction Score` BETWEEN 1 AND 10);
ALTER TABLE visits ADD CONSTRAINT check_payment_status CHECK (`Payment Status` IN ('Paid', 'Unpaid', 'Pending'));