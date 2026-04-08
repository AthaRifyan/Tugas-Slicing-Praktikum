import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog HP',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. SCAFFOLD - kerangka dasar halaman
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Katalog Smartphone',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      // 2. SINGLE CHILD SCROLL VIEW - agar bisa di-scroll
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        // 3. COLUMN - menyusun widget secara vertikal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Label section
            const Text(
              'Pilihan HP Terbaik',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '5 produk tersedia',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 16),

            // Card HP 1 - iPhone
            _buildPhoneCard(
              nama: 'iPhone 15 Pro',
              harga: 'Rp 19.999.000',
              prosesor: 'Apple A17 Pro',
              ram: '8 GB',
              baterai: '3.274 mAh',
              kamera: '48 MP',
              warna: Colors.blue.shade50,
              warnaAksen: Colors.blue,
            ),

            const SizedBox(height: 12),

            // Card HP 2 - Samsung
            _buildPhoneCard(
              nama: 'Samsung Galaxy S24',
              harga: 'Rp 14.999.000',
              prosesor: 'Snapdragon 8 Gen 3',
              ram: '8 GB',
              baterai: '4.000 mAh',
              kamera: '50 MP',
              warna: Colors.indigo.shade50,
              warnaAksen: Colors.indigo,
            ),

            const SizedBox(height: 12),

            // Card HP 3 - Xiaomi
            _buildPhoneCard(
              nama: 'Xiaomi 14',
              harga: 'Rp 10.999.000',
              prosesor: 'Snapdragon 8 Gen 3',
              ram: '12 GB',
              baterai: '4.610 mAh',
              kamera: '50 MP',
              warna: Colors.orange.shade50,
              warnaAksen: Colors.orange,
            ),

            const SizedBox(height: 12),

            // Card HP 4 - Google Pixel
            _buildPhoneCard(
              nama: 'Google Pixel 8',
              harga: 'Rp 11.499.000',
              prosesor: 'Google Tensor G3',
              ram: '8 GB',
              baterai: '4.575 mAh',
              kamera: '50 MP',
              warna: Colors.green.shade50,
              warnaAksen: Colors.green,
            ),

            const SizedBox(height: 12),

            // Card HP 5 - OPPO
            _buildPhoneCard(
              nama: 'OPPO Find X7',
              harga: 'Rp 12.499.000',
              prosesor: 'Dimensity 9300',
              ram: '12 GB',
              baterai: '5.000 mAh',
              kamera: '64 MP',
              warna: Colors.teal.shade50,
              warnaAksen: Colors.teal,
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // ── METHOD BUILD CARD ──────────────────────────────────────
  Widget _buildPhoneCard({
    required String nama,
    required String harga,
    required String prosesor,
    required String ram,
    required String baterai,
    required String kamera,
    required Color warna,
    required Color warnaAksen,
  }) {
    // 4. CONTAINER - kotak dengan dekorasi border radius & warna
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: warna, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      // 5. COLUMN di dalam card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Baris atas: ikon + nama + harga
          // 6. ROW - menyusun widget secara horizontal
          Row(
            children: [
              // Icon HP
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: warna,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.smartphone, color: warnaAksen, size: 28),
              ),

              const SizedBox(width: 12),

              // Nama & Harga
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 7. TEXT & TEXTSTYLE
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    harga,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: warnaAksen,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 14),
          Divider(color: Colors.grey.shade200, height: 1),
          const SizedBox(height: 14),

          // Baris spesifikasi: 2 kolom pakai Row
          Row(
            children: [
              Expanded(child: _buildSpesifikasi(Icons.memory, 'Prosesor', prosesor)),
              const SizedBox(width: 10),
              Expanded(child: _buildSpesifikasi(Icons.storage, 'RAM', ram)),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(child: _buildSpesifikasi(Icons.battery_full, 'Baterai', baterai)),
              const SizedBox(width: 10),
              Expanded(child: _buildSpesifikasi(Icons.camera_alt, 'Kamera', kamera)),
            ],
          ),

          const SizedBox(height: 16),

          // 8. ELEVATED BUTTON - tombol aksi
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: warnaAksen,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {},
              child: const Text(
                'Lihat Detail',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── METHOD SPESIFIKASI ITEM ────────────────────────────────
  Widget _buildSpesifikasi(IconData icon, String label, String nilai) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.grey),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
                Text(
                  nilai,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}