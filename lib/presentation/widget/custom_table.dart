import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key, required this.header, required this.data, this.columnWidth});

  final List<String> header;
  final List<List<String>> data;
  final List<double>? columnWidth;

  @override
  Widget build(BuildContext context) {
    if (header.length != data[0].length) throw Exception('Header length must be equal to data length');
    if (columnWidth != null && columnWidth!.length != header.length) {
      throw Exception('Column width length must be equal to header length');
    }
    return Table(
      columnWidths: {
        for (var index in List.generate(header.length, (index) => index))
          index: FlexColumnWidth(columnWidth?[index] ?? 1)
      },
      children: List.generate(data.length + 1, (index) {
        if (index == 0) {
          return tableRowBuild(cell: header);
        } else {
          return tableRowBuild(cell: data[index - 1]);
        }
      }),
    );
  }

  TableRow tableRowBuild({required List<String> cell}) {
    return TableRow(
      children: List.generate(cell.length, (innerIdx) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
          child: Text(
            cell[innerIdx],
            textAlign: innerIdx == 0 ? TextAlign.left : TextAlign.center,
          ),
        );
      }),
    );
  }
}

class KasirAlpin extends StatelessWidget {
  const KasirAlpin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
