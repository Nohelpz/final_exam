import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String role;
  final String email;
  final String phone;
  final String birthdate;
  final String bloodType;

  const ProfileCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.role,
    required this.email,
    required this.phone,
    required this.birthdate,
    required this.bloodType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              role,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email, color: Colors.blue),
                const SizedBox(width: 5),
                Text(email),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone, color: Color.fromARGB(255, 25, 148, 50)),
                const SizedBox(width: 5),
                Text(phone),
              ],
            ),
            const SizedBox(height: 10),
            Text("Birth Day: $birthdate", style: const TextStyle(fontSize: 14)),
            Text("Blood Type: $bloodType",
                style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Status',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 130, 122, 208),
        appBar: AppBar(
          title: const Text('Custom Widget'),
          backgroundColor: const Color.fromARGB(255, 98, 164, 218),
          elevation: 0,
        ),
        body: Center(
          child: ProfileCard(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Ff1.fandom.com%2Fwiki%2FMax_Verstappen&psig=AOvVaw0fzWmgt_cn1F-mKCypMVDo&ust=1742094078072000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOCU46WMi4wDFQAAAAAdAAAAABAE',
            name: 'Kwankaseam Sudsom',
            role: 'Student',
            email: 'sudsom_k@silpakorn.edu',
            phone: '0625092315',
            birthdate: '11 Nov 2002',
            bloodType: 'B',
          ),
        ),
      ),
    );
  }
}