import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile Saya',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage('assets/images/ardhian.jpg'),
            ),
            SizedBox(height: 20),
            const Text(
              'Ardhian Kusumayuda',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            const Text(
              'IF - D / 123200144',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailMenu()),
                );
              },
              child: Text('Detail'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/ardhian.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Ardhian Kusumayuda',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'IF - D / 123200144',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Bantul, 07 Mei 2002',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10),
            Text(
              'Reading is my hobby, successful person is my future',
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
