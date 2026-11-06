# PBO LKS — Portofolio Praktikum

Merancang & Membangun REST API Perpustakaan (PHP Modern · PSR-4 · SOLID · MVC · MySQL · Testing · GitHub Portfolio)

- Nama : Khairunisa Ansyari Ramadhan
- NIM : H1101251057
- Kelas: A
____________________
- Program Studi : Sistem Informasi, FMIPA Universitas Tanjungpura
- Mata Kuliah : Pemrograman Berbasis Objek (PBO)
- Dosen Pengampu : Syahru Rahmayuda, M.Kom

## Daftar Pertemuan

- [ ] Pertemuan 1 — Setup & Database
- [ ] Pertemuan 2 — Core OOP
- [ ] Pertemuan 3 — Framework & Routing
- [ ] Pertemuan 4 — Testing Backend
- [ ] Pertemuan 5 — CRUD Kategori
- [ ] Pertemuan 6 — Frontend
- [ ] Pertemuan 7 — Integrasi & Finalisasi

## Fitur

- REST API CRUD Buku dan CRUD Kategori (PHP 8, PDO, MySQL)
- Arsitektur berlapis: Controller → Service → Repository → Model
- Prinsip SOLID, PSR-4 autoload (Composer), Dependency Injection (Container), Front Controller
- Validasi input dan error handling (404, 422, 500) dengan pesan Bahasa Indonesia
- Frontend terpisah (HTML, Tailwind CSS, JavaScript modul): Dashboard, Buku, Kategori
- Skrip uji otomatis `rest-api-perpustakaan/tests/api_test.sh`

## Cara Menjalankan

Kebutuhan: PHP 8+, Composer 2, MySQL/MariaDB, Git Bash (untuk curl dan skrip uji), jq.

Backend:

```
cd rest-api-perpustakaan
composer dump-autoload -o
cp .env.example .env        # lalu sesuaikan DB_USERNAME dan DB_PASSWORD
mysql -u root -p < database/schema.sql
php -S localhost:8000 -t public
```

Frontend (terminal lain):

```
cd frontend-perpustakaan
php -S localhost:3000
```

Buka http://localhost:3000

## Screenshot Bukti

- Pertemuan 1 (Langkah 1 s.d. 5): folder [`pertemuan-01/`](pertemuan-01/)
- Pertemuan 2 (Langkah 6 s.d. 9): folder [`pertemuan-02/`](pertemuan-02/)
- Pertemuan 3 (Langkah 10 s.d. 11): folder [`pertemuan-03/`](pertemuan-03/)
- Pertemuan 4 (Langkah 12): folder [`pertemuan-04/`](pertemuan-04/)
- Pertemuan 5 (Langkah 13 s.d. 15): folder [`pertemuan-05/`](pertemuan-05/)
- Pertemuan 6 (Langkah 16 s.d. 18): folder [`pertemuan-06/`](pertemuan-06/)
- Pertemuan 7 (Langkah 19 s.d. 20): folder [`pertemuan-07/`](pertemuan-07/)
- Aplikasi final: [`screenshot-final/`](screenshot-final/) (dashboard.png, halaman-buku.png, halaman-kategori.png)
