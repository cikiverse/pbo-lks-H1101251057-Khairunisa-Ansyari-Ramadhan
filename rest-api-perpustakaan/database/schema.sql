CREATE DATABASE IF NOT EXISTS perpustakaan
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE perpustakaan;

CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    penulis VARCHAR(255) NOT NULL,
    tahun INT NOT NULL,
    stok INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Contoh data awal (hanya diisi jika tabel books masih kosong,
-- sehingga schema.sql aman dijalankan berulang kali)
INSERT INTO books (judul, penulis, tahun, stok)
SELECT * FROM (
    SELECT 'Laskar Pelangi' AS judul, 'Andrea Hirata' AS penulis, 2005 AS tahun, 5 AS stok
    UNION ALL
    SELECT 'Bumi Manusia', 'Pramoedya Ananta Toer', 1980, 3
) AS seed
WHERE NOT EXISTS (SELECT 1 FROM books);

-- Tabel untuk Kategori (Langkah 13)
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL UNIQUE,
    deskripsi TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Data awal kategori (INSERT IGNORE: aman dijalankan berulang, nama UNIQUE)
INSERT IGNORE INTO categories (nama, deskripsi) VALUES
('Fiksi', 'Buku-buku fiksi dan novel'),
('Non-Fiksi', 'Buku non-fiksi, sains, sejarah');
