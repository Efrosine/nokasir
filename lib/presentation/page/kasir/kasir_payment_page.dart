import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nokasir/presentation/widget/custom_table.dart';
import 'package:nokasir/presentation/widget/kasir_footer.dart';

class KasirPaymentPage extends StatelessWidget {
  const KasirPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(80),
                Text(
                  'NoKasir',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Gap(24),
                Text('Pembayaran',
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
                Gap(24),
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Container(
                    color: Colors.grey[300],
                    child: SingleChildScrollView(
                      child: CustomTable(
                        header: [
                          'Nama',
                          'Harga',
                          'Jumlah',
                          'Total',
                        ],
                        data: List.generate(
                          19,
                          (index) => ['Barang $index', 'Rp. 100.000', '$index', 'Rp. 100.000'],
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(32),
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    label: Text('Uang Dibayarkan'),
                  ),
                ),
                Gap(32),
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    label: Text('Kembalian'),
                  ),
                ),
              ],
            ),
          ),
          KasirFooter()
        ],
      ),
    );
  }
}
