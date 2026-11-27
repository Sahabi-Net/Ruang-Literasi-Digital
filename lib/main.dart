import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/provider_literasi.dart';
import 'screens/halaman_utama.dart';

void main() {
  runApp(const LiterasiApp());
}

class LiterasiApp extends StatelessWidget {
  const LiterasiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LiteracyProvider(),
      child: MaterialApp(
        title: 'Aplikasi - Literasi Digital',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1E3A8A),
            brightness: Brightness.light,
          ),
          fontFamily: 'Poppins',
        ),
        home: const HalamanUtamaLiterasi(),
      ),
    );
  }
}