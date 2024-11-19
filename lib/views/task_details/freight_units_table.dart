import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/views/task_details/freight_units_table_quantity_cell.dart";

class FreightUnitsTable extends HookConsumerWidget {
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

  @override
  Widget build(final context, final ref) {
    final rowInEditMode = useState<String?>(null);

    DataRow freightUnitToDataRow(
      final FreightUnit freightUnit,
    ) =>
        DataRow(
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
                child: FreightUnitsTableQuantityCell(
                  readOnly: readOnly,
                  editMode: rowInEditMode.value == freightUnit.id,
                  freightUnit: freightUnit,
                  setEditMode: (final editMode) =>
                      rowInEditMode.value = editMode ? freightUnit.id : null,
                  toggleEditMode: () => rowInEditMode.value == freightUnit.id
                      ? rowInEditMode.value = null
                      : rowInEditMode.value = freightUnit.id,
                ),
              ),
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

    return DataTable(
      border: const TableBorder.symmetric(
        outside: BorderSide(width: 0.75, color: Color(0xFFEAEAEA)),
        inside: BorderSide(width: 1, color: Color(0xFFEAEAEA)),
      ),
      dividerThickness: 0.01,
      headingRowHeight: 32,
      dataRowMinHeight: 40,
      dataRowMaxHeight: 40,
      headingRowColor: WidgetStateProperty.all(const Color(0xFFF2F8FA)),
      dataRowColor: WidgetStateProperty.all(const Color(0xFFFAFAFA)),
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
}
