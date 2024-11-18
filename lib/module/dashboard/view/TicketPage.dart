import 'package:flutter/material.dart';

class MyTicketsPage extends StatelessWidget {
  final List<Map<String, String>> tickets = [
    {
      'eventName': 'Metting I',
      'eventDate': '2024-03-15',
      'location': 'Bandung, ',
      'status': 'Active',
    },
    {
      'eventName': 'Tech Conference 2024',
      'eventDate': '2024-04-22',
      'location': 'Solo, SF',
      'status': 'Active',
    },
    {
      'eventName': 'Pembantaian Para Petinggi IDN ',
      'eventDate': '30-9-65',
      'location': 'Jakarta, NY',
      'status': 'Later',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tickets'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          final ticket = tickets[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Acara
                  Text(
                    ticket['eventName'] ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  
                  // Tanggal dan Lokasi Acara
                  Text(
                    'Date: ${ticket['eventDate']}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  Text(
                    'Location: ${ticket['location']}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  
                  // Status Tiket
                  Text(
                    'Status: ${ticket['status']}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ticket['status'] == 'Active' ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
