# Panduan File per Langkah

Folder kerja (`rest-api-perpustakaan/` dan `frontend-perpustakaan/`) berisi kode versi akhir.
Supaya hasil tiap langkah sama dengan "Output yang Diharapkan" di LKS, salin file tahapan
berikut **sebelum** menjalankan langkah yang bersangkutan (dari folder ROOT repo).

| Langkah | Salin | Ke |
| --- | --- | --- |
| 3 | `tahapan/schema_langkah03.sql` | `rest-api-perpustakaan/database/schema.sql` |
| 8 | `tahapan/index_langkah08.php` | `rest-api-perpustakaan/public/index.php` |
| 13 | `tahapan/schema_langkah13.sql` | `rest-api-perpustakaan/database/schema.sql` |
| 14 | `tahapan/index_langkah14.php` | `rest-api-perpustakaan/public/index.php` |
| 16 | `tahapan/index_langkah16.php` | `rest-api-perpustakaan/public/index.php` |
| 17 | `tahapan/app_langkah17.js` | `frontend-perpustakaan/js/app.js` |
| 18 | `tahapan/app_langkah18.js` | `frontend-perpustakaan/js/app.js` |
| 19 | `tahapan/app_langkah19.js` | `frontend-perpustakaan/js/app.js` |

Catatan:

- Langkah 1–2 tidak butuh file tahapan. Langkah 4–7 memakai file `test_*.php` di `rest-api-perpustakaan/`.
- Di Langkah 13–19 file `src/...` Category dan `js/pages/*.js` sudah ada; hanya file di tabel yang perlu disalin.
- `schema.sql` aman dijalankan berulang: data awal buku hanya diisi jika tabel `books` kosong, kategori memakai `INSERT IGNORE`.
- Setelah Langkah 4, hapus `test_connection.php` (ada di checklist LKS).
- `.env` dibuat sendiri dari `.env.example` dan tidak boleh di-commit.
- Pakai **Git Bash** untuk semua perintah curl dan `tests/api_test.sh` (butuh `jq`).
- Perintah commit tiap langkah ada di kotak "Upload ke GitHub" pada LKS.
