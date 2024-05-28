import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nokasir/presentation/widget/custom_table.dart';

class AdminMngUserPage extends StatelessWidget {
  const AdminMngUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(100),
          Text('NoKasir', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),
          Gap(24),
          Text('Kelola Pengguna'),
          Gap(24),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: SingleChildScrollView(
                child: CustomTable(
                  header: ['Pengguna', 'Password', 'Role'],
                  data: List.generate(10, (index) => ['User $index', 'Password $index', 'Role $index']),
                ),
              ),
            ),
          ),
          Gap(32),
          ElevatedButton(onPressed: () {}, child: Text('Ubah Pengguna')),
          Gap(16),
          ElevatedButton(onPressed: () {}, child: Text('Tambah Pengguna')),
          Gap(100),
        ],
      ),
    );
  }
}
