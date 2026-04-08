# Tugas Slicing - Katalog Smartphone

Implementasi UI Slicing sederhana menggunakan Flutter.
Menampilkan daftar smartphone beserta spesifikasi dan harganya.

## 📸 Screenshot

![Phone List](screenshots/phone_list.png)

## ✨ Fitur

- Daftar HP dengan kartu (card) yang rapi
- Menampilkan spesifikasi lengkap (prosesor, RAM, baterai, kamera, layar)
- Harga dalam format Rupiah
- Warna tema berbeda per brand

## 🚀 Cara Menjalankan

Jika ingin menjalankan proyek ini pada komputermu, ikuti langkah-langkah berikut:

1. **Clone repositori:**
   ```bash
   git clone "link repositori ini"
   ```
2. **Masuk ke Directory Project**
   ```bash
   cd Tugas-Slicing-Praktikum
   ```
3. **Unduh Semua Dependencies**
   ```bash
   flutter pub get
   ```
4. **Run Aplikasi di Emulator atau yang Lainnya**
   ```bash
   flutter run
   ```
 ---

## 🛠️ Teknologi

Proyek ini dibangun menggunakan **Flutter** dan **Dart**. Beberapa widget dasar (*beginner-friendly*) yang digunakan dalam *slicing* ini antara lain:

* `Scaffold` - Sebagai kerangka dasar halaman
* `SingleChildScrollView` - Agar layar bisa di-*scroll* dan mencegah *bottom overflow*.
* `Column` & `Row` - Untuk menyusun tata letak secara vertikal dan horizontal.
* `Container` - Untuk membuat kotak dengan dekorasi (*border radius*, warna *background*).
* `Text` & `TextStyle` - Untuk menampilkan teks dengan berbagai tipografi.
* `ElevatedButton` - Untuk tombol aksi (Call to Action).
