import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:tms_api/tms_api.dart";

class PublicTruckSelect extends StatelessWidget {
  const PublicTruckSelect({
    super.key,
    required this.publicTrucks,
    required this.initialValue,
    required this.onSelectTruck,
  }) : super();

  final List<PublicTruck> publicTrucks;
  final PublicTruck? initialValue;
  final void Function(PublicTruck?) onSelectTruck;

  @override
  Widget build(final BuildContext context) {
    final truckTextStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontWeight: FontWeight.w900);

    DropdownMenuEntry getPublicTruckDropdownEntry(
      final PublicTruck publicTruck,
    ) =>
        DropdownMenuEntry(
          label: "${publicTruck.name} / ${publicTruck.plateNumber}",
          value: publicTruck.vin,
          style: ButtonStyle(
            alignment: Alignment.center,
            padding: const WidgetStatePropertyAll(
              EdgeInsets.only(top: 16, bottom: 16, left: 100),
            ),
            textStyle: WidgetStatePropertyAll(truckTextStyle),
          ),
        );

    return Stack(
      children: [
        DropdownMenu(
          dropdownMenuEntries:
              publicTrucks.map(getPublicTruckDropdownEntry).toList(),
          initialSelection: initialValue?.vin,
          // ignore: unnecessary_lambdas because of the type inference
          onSelected: (final truckVin) => onSelectTruck(
            publicTrucks
                .firstWhereOrNull((final truck) => truck.vin == truckVin),
          ),
          trailingIcon: const Icon(Icons.swap_vert, size: 32),
          selectedTrailingIcon: const Icon(Icons.swap_vert, size: 32),
          expandedInsets: const EdgeInsets.all(0),
          textStyle: truckTextStyle,
          menuStyle: MenuStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.white),
            surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            maximumSize: const WidgetStatePropertyAll(
              Size(double.infinity, 400),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 72),
            constraints: BoxConstraints(maxHeight: 80),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        const Image(
          image: AssetImage(
            "assets/images/finnish-license-plate-prefix.png",
          ),
          height: 80,
          fit: BoxFit.fitHeight,
        ),
      ],
    );
  }
}
