---Query Kompleks & Agregasi Laporan---
---Digunakan untuk menampilkan hasil sesuai kolom tabel yang dipilih dari tabel induk, serta fungsi agregat yang digunakan---
SELECT
    k.Nomor_Plat,
    COUNT(p.No_Log) AS Total_Transaksi
FROM Kendaraan k
---Join digunakan untuk menggabungkan 2 Tabel, agar tabel yang ditarik relevan maka tabel yang digabungkan merupakan tabel transaksi(parkir)---
JOIN parkir p
    ON k.ID_Kendaraan = p.ID_Kendaraan
---Where sendiri digunakan untuk memfiltrasi berdasarkan kondisi tertentu sesuai apa yang dimaksudkan pengguna---
WHERE p.Waktu_Masuk >= '2026-10-19 00:00:00'
  AND p.Waktu_Masuk <  '2026-10-20 00:00:00'
---Group by digunakan untuk mengelompokkan hasil agregasi berdasarkan atribut induk, disini menggunakan atribut primary (ID_Kendaraan) dan atribut (Nomor_Plat)---
GROUP BY k.ID_Kendaraan, k.Nomor_Plat;
