import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('NoKasir', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),
            Gap(32),
            Text('Admin', textAlign: TextAlign.center, style: Theme.of(context).textTheme.displayMedium),
            Gap(100),
            ElevatedButton(
              onPressed: () {},
              child: Text('Kelola Pengguna'),
            ),
            Gap(16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Kelola Stok Produk'),
            ),
            Gap(16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Laporan Keuangan'),
            ),
            Gap(40)
          ],
        ),
      ),
    );
  }
}
