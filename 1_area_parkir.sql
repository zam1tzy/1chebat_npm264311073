CREATE TABLE Area_Parkir (
    ID_Area    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    Nama_Area  VARCHAR(50)   NOT NULL,
    Lokasi     VARCHAR(100)  NOT NULL,
    CONSTRAINT pk_area_parkir PRIMARY KEY (ID_Area)
) ENGINE=InnoDB;

CREATE TABLE Kendaraan (
    ID_Kendaraan    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ID_Area         INT UNSIGNED NOT NULL,
    Nomor_Plat      VARCHAR(12) NOT NULL,
    Jenis_Kendaraan ENUM('Motor','Mobil') NOT NULL,
    UID_RFID        VARCHAR(20) NOT NULL,
    CONSTRAINT pk_kendaraan
        PRIMARY KEY (ID_Kendaraan),
    CONSTRAINT uq_kendaraan_rfid
        UNIQUE (UID_RFID),
    CONSTRAINT fk_kendaraan_area
        FOREIGN KEY (ID_Area)
        REFERENCES area_parkir(ID_Area)
) ENGINE=InnoDB;


CREATE TABLE Parkir (
    No_Log          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    ID_Kendaraan    INT UNSIGNED NOT NULL,
    ID_Area         INT UNSIGNED NOT NULL,
    Waktu_Masuk     DATETIME NOT NULL,
    Waktu_Keluar    DATETIME NULL,
    Durasi_Jam      DECIMAL(6,2) NULL,

    CONSTRAINT pk_parkir
        PRIMARY KEY (No_Log),
    CONSTRAINT fk_parkir_kendaraan
        FOREIGN KEY (ID_Kendaraan)
        REFERENCES Kendaraan(ID_Kendaraan),
    CONSTRAINT fk_parkir_area
        FOREIGN KEY (ID_Area)
        REFERENCES area_parkir(ID_Area)
) ENGINE=InnoDB;
