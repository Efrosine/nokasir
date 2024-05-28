import 'package:flutter/material.dart';
import 'package:nokasir/config/app_theme.dart';
import 'package:nokasir/presentation/page/admin/admin_mng_user_page.dart';
import 'package:nokasir/presentation/page/admin/admin_home_page.dart';
import 'package:nokasir/presentation/page/kasir/kasir_home_page.dart';
import 'package:nokasir/presentation/page/kasir/kasir_payment_page.dart';
import 'package:nokasir/presentation/page/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      themeMode: ThemeMode.light,
      home: SafeArea(child: KasirHomePage()),
    );
  }
}
