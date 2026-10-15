import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4D2D), // Warna latar belakang orange/merah
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ini Halaman Tujuan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/2664/2664589.png', // Gambar Ilustrasi Pulau
                    height: 120,
                    width: 120,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.beach_access, size: 100, color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF007ECC), // Warna tombol biru
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '< Kembali ke home',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}