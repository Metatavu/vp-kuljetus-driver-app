import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";

class FreightUnitsTable extends ConsumerWidget {
  const FreightUnitsTable({
    super.key,
    required this.freightUnits,
    required this.readOnly,
  });

  final List<FreightUnit> freightUnits;
  final bool readOnly;

  DataCell renderDataCell(
    final String text, {
    final bool showEditIcon = false,
  }) =>
      DataCell(
        SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.centerLeft,
            child: Text(text),
          ),
        ),
        showEditIcon: showEditIcon,
      );

  DataRow freightUnitToDataRow(final FreightUnit freightUnit) => DataRow(
        cells: [
          DataCell(
            Container(
              alignment: Alignment.centerLeft,
              child: Text(freightUnit.contents ?? "-"),
            ),
          ),
          DataCell(
            Container(
              constraints: const BoxConstraints.expand(),
              color: readOnly ? null : Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(freightUnit.quantity.toString()),
                  if (!readOnly)
                    const Icon(Icons.edit, size: 20, color: Colors.black54),
                ],
              ),
            ),
            onTap: () {},
          ),
          DataCell(
            Container(
              padding: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: Text(freightUnit.type),
            ),
          ),
        ],
      );

  @override
  Widget build(final context, final ref) => DataTable(
        border: TableBorder.symmetric(
          outside: const BorderSide(width: 0.75, color: Color(0xFFEAEAEA)),
          inside: const BorderSide(width: 1, color: Color(0xFFEAEAEA)),
        ),
        dividerThickness: 0.01,
        headingRowHeight: 32,
        dataRowMinHeight: 40,
        dataRowMaxHeight: 40,
        headingRowColor: MaterialStateProperty.all(const Color(0xFFF2F8FA)),
        dataRowColor: MaterialStateProperty.all(const Color(0xFFFAFAFA)),
        dataTextStyle: const TextStyle(color: Colors.black45),
        columnSpacing: 0,
        columns: [
          DataColumn(
            label: Container(
              alignment: Alignment.centerLeft,
              child: const Text("Sisältö"),
            ),
          ),
          DataColumn(
            label: Container(
              padding: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: const Text("Määrä"),
            ),
          ),
          DataColumn(
            label: Container(
              padding: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: const Text("Tyyppi"),
            ),
          ),
        ],
        rows: freightUnits.map(freightUnitToDataRow).toList(),
      );
}
