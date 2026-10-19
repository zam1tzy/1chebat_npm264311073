---[CREATE]---
---MEMASUKKAN DATA KEDALAM MASING MASING TABLE---
---DATA TABEL area_parkir---
INSERT INTO area_parkir
  (Nama_Area, Lokasi)
VALUES
  ('Area Selatan', 'Selatan Indoor'),
  ('Area Barat', 'Barat Outdoor'),
  ('Area utara', 'Utara Outdoor');

---DATA TABEL kendaraan---

INSERT INTO Kendaraan
    (Nomor_Plat, Jenis_Kendaraan, UID_RFID)
VALUES
    ('AE1922BE', 'Motor', 'RFID-001'),
    ('AE5678DC', 'Motor', 'RFID-002'),
    ('AE9012EF', 'Motor', 'RFID-003');

---DATA TABEL parkir---
INSERT INTO Parkir
    (ID_Kendaraan, ID_Area, Waktu_Masuk,
     Waktu_Keluar, Durasi_Jam)
VALUES
    (1, 1, '2026-10-19 08:00:00',
     '2026-10-19 10:00:00', 2.00),
    (2, 2, '2026-10-19 09:00:00',
     '2026-10-19 12:00:00', 3.00),
    (3, 3, '2026-10-19 10:00:00',
     NULL, NULL);


---[READ]---
---Membaca seluruh isi Table kendaraan---
SELECT * FROM Kendaraan;


---[UPDATE]---
UPDATE Kendaraan k
JOIN Parkir p
    ON k.ID_Kendaraan = p.ID_Kendaraan
SET k.Nomor_Plat = 'AE1980IV'
WHERE p.No_Log = 1;
---mengubah data nomor plat pada tabel kendaraan melalui tabel transaksi yang terelasikan---

---[DELETE]---
DELETE FROM parkir
WHERE No_Log = 1;
---digunakan untuk menghapus 1 baris data yang ada pada log no 1 pada tabel transaksi (parkir)---
