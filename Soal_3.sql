---Query Kompleks & Agregasi Laporan---
SELECT
    k.Nomor_Plat,
    COUNT(p.No_Log) AS Total_Transaksi
FROM Kendaraan k
JOIN Parkir p
    ON k.ID_Kendaraan = p.ID_Kendaraan
WHERE p.Waktu_Masuk >= '2026-10-19 00:00:00'
  AND p.Waktu_Masuk <  '2026-10-20 00:00:00'
GROUP BY k.ID_Kendaraan, k.Nomor_Plat;
