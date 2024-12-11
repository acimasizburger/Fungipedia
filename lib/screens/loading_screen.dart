// Loading screen will be here
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//import '../core/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 20, 25),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo bölümü
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 70),

            // Yükleniyor yazısı
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 245, 110, 15),
              ),
            ),

            const SizedBox(height: 100),

            // Ana Sayfa Butonu
            ElevatedButton(
              onPressed: () => context.go("/home"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 245, 110, 15),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Ana Sayfaya Git',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 251, 251, 251),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}