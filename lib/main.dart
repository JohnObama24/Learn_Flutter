import 'package:flutter/material.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/about': (context) => const About(),
    },
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('John Obama'),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/john.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          const Text('Welcome to John Obama\'s official Porto app!'),
          const SizedBox(height: 10.0),
          const Text('SaYA Cinta Flutter dan Javascript'),
          const SizedBox(height: 10.0),
          const Text('He has been a member of Congress since 19'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: const Text('About me'),
          ),
        ],
      ),
    );
  }
}
