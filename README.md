# basis-data_praktikum5

# Table mahasiswa

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/275a1551-ac73-4fce-8338-aac27d48d59f)

# Table dosen

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/7e1a2fb9-83c4-42ad-8740-77c2cecc0ebe)

# Table matakuliah

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/a543ee97-f6a7-4aab-b45c-f2ea4d41f8fe)

# Table jadwalmengajar

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/a1d2b0e5-cf89-423c-8e5a-44d090d13557)

# table KRSmahasiswa

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/1500cc8e-5993-445a-aaca-95b88a758363)

# Latihan
- Lakukan join table Mahasiswa dan Dosen
- Lakukan join tabel Matakuliah dan Dosen
- Lakukan join table JadwalMengajar, Dosen, dan Matakuliah
- Lakukan join tabel KrsMahasiswa, Mahasiswa, Matakuliah, dan Dosen

------------

# join table mahasiswa dan dosen

    SELECT m.nim, m.nama, m.jk, d.nama AS 'Dosen PA'
    FROM mahasiswa m
    JOIN dosen d ON m.kd_ds = d.kd_ds;

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/cdf0bd49-fb5b-4a18-9bba-6f3b7a075bc3)

# left join table mahasiswa dan dosen 

    SELECT m.nim, m.nama, m.jk, d.nama AS 'Dosen PA'
    FROM mahasiswa m
    LEFT JOIN dosen d ON m.kd_ds = d.kd_ds;

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/5766068d-4407-4ff4-8d5f-9545ac0ab8da)

# join table JadwalMengajar, Dosen, dan Matakuliah

    SELECT jm.kd_mk, mk.nama, mk.sks, d.nama AS 'Dosen Pengampu'
    FROM jadwalmengajar jm
    JOIN dosen d ON jm.kd_ds = d.kd_ds
    JOIN matakuliah mk ON jm.kd_mk = mk.kd_mk;

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/d322cda7-8141-496f-a564-befa092a25ef)

# join tabel KrsMahasiswa, Mahasiswa, Matakuliah, dan Dosen


    SELECT km.kd_mk, mk.nama, mk.sks, d.nama AS 'Dosen Pengampu', jm.hari, jm.jam, jm.ruang
    FROM krsmahasiswa km
    JOIN mahasiswa m ON km.nim = m.nim
    JOIN matakuliah mk ON km.kd_mk = mk.kd_mk
    JOIN jadwalmengajar jm ON km.kd_mk = jm.kd_mk AND km.kd_ds = jm.kd_ds
    JOIN dosen d ON jm.kd_ds = d.kd_ds;

![image](https://github.com/verz666/basis-data_praktikum5/assets/115523263/cb0ff9a4-8167-43e6-9687-76fd372f2f1a)
