import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(), // Sesuai starter code awal
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
      ),
      body: SafeArea(
        // Dibungkus SingleChildScrollView agar bisa di-scroll
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Banner Promo
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'PROMO SPESIAL HARI INI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),

              // Info Gratis Ongkir (sesuai permintaan sebelumnya)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.discount, color: Colors.red, size: 20), // Ukuran ikon disamakan
                    const SizedBox(width: 8.0),
                    const Text(
                      'Gratis Ongkir Seluruh Indonesia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Icon(Icons.local_shipping, color: Colors.green, size: 20), // Ukuran ikon disamakan
                  ],
                ),
              ),

              // Produk 1 (sesuai permintaan sebelumnya)
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                padding: const EdgeInsets.only(top: 18.0, bottom: 12.0, left: 16.0, right: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sepatu Running Pro',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star_half, color: Colors.amber.shade600, size: 16.0),
                        const SizedBox(width: 6.0),
                        const Text('4.5 (125 reviews)', style: TextStyle(fontSize: 12.0, color: Colors.black54)),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 750.000',
                          style: TextStyle(color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text('Beli', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.local_shipping_outlined, color: Colors.grey.shade600, size: 14.0),
                        const SizedBox(width: 4.0),
                        Text('Estimasi tiba: 2-4 hari kerja', style: TextStyle(fontSize: 12.0, color: Colors.grey.shade700)),
                      ],
                    ),
                  ],
                ),
              ),

              // Produk 2 (sesuai permintaan sebelumnya)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.only(top: 18.0, bottom: 12.0, left: 16.0, right: 16.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Tas Ransel Adventure',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star, color: Colors.amber.shade600, size: 16.0),
                        Icon(Icons.star_outline, color: Colors.amber.shade600, size: 16.0),
                        const SizedBox(width: 6.0),
                        const Text('4.4 (198 reviews)', style: TextStyle(fontSize: 12.0, color: Colors.black54)),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Rp 350.000',
                          style: TextStyle(color: Colors.green.shade800, fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text('Beli', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.local_shipping_outlined, color: Colors.grey.shade600, size: 14.0),
                        const SizedBox(width: 4.0),
                        Text('Estimasi tiba: 3-5 hari kerja', style: TextStyle(fontSize: 12.0, color: Colors.grey.shade700)),
                      ],
                    ),
                  ],
                ),
              ),

              // Kategori Produk
              // Di sini, kita akan menulis setiap item kategori secara langsung tanpa helper method,
              // ini lebih mencerminkan cara kerja jika belum terbiasa dengan refactoring.
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Wrap(
                  alignment: WrapAlignment.spaceAround, // Agar item tersebar rata
                  spacing: 16.0, // Spasi horizontal antar item
                  runSpacing: 16.0, // Spasi vertikal jika item pindah baris
                  children: <Widget>[
                    // Pakaian
                    Column(
                      children: <Widget>[
                        const Icon(Icons.shopping_bag, color: Colors.blue, size: 30), // Ikon dari starter code
                        const SizedBox(height: 8.0),
                        const Text('Pakaian'),
                      ],
                    ),
                    // Aksesoris
                    Column(
                      children: <Widget>[
                        const Icon(Icons.watch, color: Colors.blue, size: 30), // Ikon dari starter code
                        const SizedBox(height: 8.0),
                        const Text('Aksesoris'),
                      ],
                    ),
                    // Elektronik
                    Column(
                      children: <Widget>[
                        const Icon(Icons.devices, color: Colors.blue, size: 30), // Ikon dari starter code
                        const SizedBox(height: 8.0),
                        const Text('Elektronik'),
                      ],
                    ),
                    // Hobi & Game
                    Column(
                      children: <Widget>[
                        const Icon(Icons.sports_esports, color: Colors.blue, size: 30),
                        const SizedBox(height: 8.0),
                        const Text('Hobi & Game'),
                      ],
                    ),
                    // Furniture
                    Column(
                      children: <Widget>[
                        const Icon(Icons.chair, color: Colors.blue, size: 30), // Menggunakan ikon non-outlined jika tersedia
                        const SizedBox(height: 8.0),
                        const Text('Furniture'),
                      ],
                    ),
                    // Sepatu
                    Column(
                      children: <Widget>[
                        const Icon(Icons.directions_run, color: Colors.blue, size: 30), // Ikon yang dipilih sebelumnya
                        const SizedBox(height: 8.0),
                        const Text('Sepatu'),
                      ],
                    ),
                    // Makanan
                    Column(
                      children: <Widget>[
                        const Icon(Icons.lunch_dining, color: Colors.blue, size: 30), // Menggunakan ikon non-outlined jika tersedia
                        const SizedBox(height: 8.0),
                        const Text('Makanan'),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 24.0),
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  'PROMO SPESIAL AKHIR PEKAN! DISKON HINGGA 70%!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        onTap: (index) {
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}