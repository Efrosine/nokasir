import 'package:flutter/material.dart';
import 'package:nokasir/presentation/page/admin/admin_home_page.dart';

class KasirFooter extends StatelessWidget {
  const KasirFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Harga'),
              Text('Rp. 100.000'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminHomePage()));
            },
            child: const Text('Bayar'),
          ),
        ],
      ),
    );
  }
}
