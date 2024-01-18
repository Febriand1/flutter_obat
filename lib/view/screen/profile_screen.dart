import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Psikofarmaka",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildCreatorProfile(
                "Creator 1",
                "Dirga Febrian",
                "1214039",
                "@febriand_1",
                "Live life to the fullest",
                "assets/images/dirga.png"),
            SizedBox(
              height: 20,
            ),
            _buildCreatorProfile(
                "Creator 2",
                "Juwita Stefany",
                "1214026",
                "@wops1e_",
                "Be yourself; everyone else is already taken",
                "assets/images/juwitas.png"),
          ],
        ),
      ),
    );
  }

  Widget _buildCreatorProfile(String title, String fullName, String npm,
      String socialMedia, String motto, String imagePath) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: $fullName"),
            Text("NPM: $npm"),
            Text("Instagram: $socialMedia"),
            Text("Motto: $motto"),
          ],
        ),
      ),
    );
  }
}