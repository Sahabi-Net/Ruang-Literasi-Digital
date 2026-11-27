import 'package:flutter/material.dart';

class FeaturedBannerCard extends StatelessWidget {
  const FeaturedBannerCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1E3A8A).withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Layer 1: Banner
            Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.cover,
            ),
            // Layer 2: Gradient Overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    const Color(0xFF0F172A).withOpacity(0.45),
                    const Color(0xFF1E3A8A).withOpacity(0.92),
                  ],
                ),
              ),
            ),

            // Layer 3: Teks dan deskripsi
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                        'Cerdas & Aman \ndi Ruang Literasi Digital',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6),
                      Text(
                        'Kuasai 4 pilar utama: Digital Skills, Culture, Ethics, dan Safety.',
                        style: TextStyle(
                          color: Color(0xFFE2E8F0),
                          fontSize: 12.5,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}