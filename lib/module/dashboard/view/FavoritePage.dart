import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Contoh data dummy untuk tiket favorit di lokasi Indonesia
    final List<Map<String, String>> favoriteEvents = [
      {
        "title": "Konser Musik Rock",
        "date": "2024-12-05",
        "location": "Stadion Gelora Bung Karno, Jakarta",
        "image": "https://example.com/konser_rock.jpg"
      },
      {
        "title": "Pameran Seni Rupa",
        "date": "2024-11-20",
        "location": "Galeri Nasional Indonesia, Jakarta",
        "image": "https://example.com/pameran_seni.jpg"
      },
      {
        "title": "Pertandingan Sepak Bola",
        "date": "2024-12-10",
        "location": "Stadion Si Jalak Harupat, Bandung",
        "image": "https://example.com/pertandingan_sepakbola.jpg"
      },
      {
        "title": "Festival Budaya",
        "date": "2025-01-15",
        "location": "Lapangan Merdeka, Medan",
        "image": "https://example.com/festival_budaya.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorit"),
      ),
      body: ListView.builder(
        itemCount: favoriteEvents.length,
        itemBuilder: (context, index) {
          final event = favoriteEvents[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: ListTile(
              leading: Image.network(
                event["image"]!,
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
              title: Text(event["title"]!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tanggal: ${event["date"]}"),
                  Text("Lokasi: ${event["location"]}"),
                ],
              ),
              onTap: () {
                // Logika untuk navigasi atau membuka peta lokasi
              },
            ),
          );
        },
      ),
    );
  }
}