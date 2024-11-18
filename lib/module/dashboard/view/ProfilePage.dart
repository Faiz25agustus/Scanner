import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Path gambar profil lokal di folder assets
  final String profileImagePath = 'assets/images/contoh.png';
  final String userName = 'John Doe';
  final String userEmail = 'johndoe@example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profil Gambar
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage(profileImagePath),
            ),
            SizedBox(height: 16),

            // Nama Pengguna
            Text(
              userName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Email Pengguna
            Text(
              userEmail,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 32),

            // Menu Profil
            ListTile(
              leading: Icon(Icons.confirmation_number),
              title: Text('My Tickets'),
              onTap: () {
                Navigator.pushNamed(context, '/myTickets');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                _showLogoutConfirmation(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk konfirmasi logout
  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Proses logout di sini
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );
  }
}
