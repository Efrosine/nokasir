import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../widget/kasir_footer.dart';

class KasirHomePage extends StatelessWidget {
  const KasirHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    label: Text('Code Barang'),
                  ),
                ),
                const Gap(16),
                const TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    label: Text('Nama Barang'),
                  ),
                ),
                const Gap(16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Harga Barang'), Text('Rp. 100.000')],
                    ),
                    Column(
                      children: [
                        const Text('Jumlah'),
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                            const Text('1'),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                OutlinedButton(onPressed: () {}, child: Text('Tambah Barang'))
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.grey[100],
              child: SingleChildScrollView(
                child: Table(
                  children: List.generate(40, (index) {
                    if (index == 0) {
                      return const TableRow(children: [
                        TableCell(child: Text('No')),
                        TableCell(child: Text('Nama Barang')),
                        TableCell(child: Text('Harga')),
                        TableCell(child: Text('Jumlah')),
                      ]);
                    }
                    return TableRow(children: [
                      TableCell(child: Text('1 $index')),
                      TableCell(child: Text('2')),
                      TableCell(child: Text('3')),
                      TableCell(child: Text('4')),
                    ]);
                  }),
                ),
              ),
            ),
          ),
          KasirFooter(),
        ],
      ),
    );
  }
}
