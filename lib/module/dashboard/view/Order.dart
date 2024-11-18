import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Contoh data dummy untuk tiket yang telah dipesan
    final List<Map<String, String>> orders = [
      {
        "title": "Konser Musik Rock",
        "date": "2024-12-05",
        "location": "Stadion Gelora Bung Karno, Jakarta",
        "status": "Berhasil",
        "image": "https://example.com/konser_rock.jpg"
      },
      {
        "title": "Pameran Seni Rupa",
        "date": "2024-11-20",
        "location": "Galeri Nasional Indonesia, Jakarta",
        "status": "Diproses",
        "image": "https://example.com/pameran_seni.jpg"
      },
      {
        "title": "Pertandingan Sepak Bola",
        "date": "2024-12-10",
        "location": "Stadion Si Jalak Harupat, Bandung",
        "status": "Dibatalkan",
        "image": "https://example.com/pertandingan_sepakbola.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Saya"),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: ListTile(
              leading: Image.network(
                order["image"]!,
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
              title: Text(order["title"]!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tanggal: ${order["date"]}"),
                  Text("Lokasi: ${order["location"]}"),
                  Text("Status: ${order["status"]}", style: TextStyle(
                      color: order["status"] == "Berhasil"
                          ? Colors.green
                          : order["status"] == "Diproses"
                              ? Colors.orange
                              : Colors.red,
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Logika untuk navigasi ke detail pesanan
              },
            ),
          );
        },
      ),
    );
  }
}
