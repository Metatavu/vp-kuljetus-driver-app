import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/freight_units/freight_units_providers.dart";

String formatFreightUnitQuantity(final FreightUnit freightUnit) {
  final quantity = freightUnit.quantity;
  if (quantity == null) return "-";
  if (quantity.toInt() == quantity.roundToDouble()) return quantity.toInt().toString();

  return freightUnit.quantity.toString();
}

class FreightUnitsTableQuantityCell extends HookConsumerWidget {
  const FreightUnitsTableQuantityCell({
    super.key,
    required this.readOnly,
    required this.editMode,
    required this.freightUnit,
    required this.toggleEditMode,
    required this.setEditMode,
  });

  final bool readOnly;
  final bool editMode;
  final FreightUnit freightUnit;
  final VoidCallback toggleEditMode;
  final Function(bool) setEditMode;

  @override
  Widget build(final context, final ref) {
    final focusNode = useFocusNode();

    final updateFreightUnitNotifier = ref.watch(updateFreightUnitProvider(freightUnit.id!).notifier);

    final textEditController = useTextEditingController(text: formatFreightUnitQuantity(freightUnit));

    useEffect(() {
      editMode ? focusNode.requestFocus() : null;
      return null;
  }, [ editMode ],);

    void onEditingComplete() {
      final newQuantity = double.tryParse(textEditController.text);
      if (newQuantity != null && newQuantity != freightUnit.quantity) {
        updateFreightUnitNotifier.mutate(
          freightUnit.id!,
          freightUnit.rebuild((final builder) => builder.quantity = newQuantity),
        );
      } else {
        textEditController.text = formatFreightUnitQuantity(freightUnit);
      }
      FocusManager.instance.primaryFocus?.unfocus();
      toggleEditMode();
    }


  Widget? renderSuffixIcon() => readOnly ? null :
    IconButton(
      onPressed: readOnly ? null : onEditingComplete,
      icon: Icon(
        editMode ? Icons.check : Icons.edit,
        size: 20,
        color: Colors.black54,
      ),
    );

    return TextField(
      focusNode: focusNode,
      onTap: () => setEditMode(true),
      enableInteractiveSelection: editMode,
      readOnly: readOnly || !editMode,
      contextMenuBuilder: (final _, final __) => const SizedBox.shrink(),
      keyboardType: TextInputType.number,
      controller: textEditController,
      // TODO: Properly handle keyboard padding
      // Client currently uses one phone model and this is sufficient for the time being.
      scrollPadding: const EdgeInsets.only(bottom: 210),
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(255, 255, 0, editMode ? 0.5 : 0.0),
        filled: true,
        border: InputBorder.none,
        suffixIcon: renderSuffixIcon(),
        ),
        onEditingComplete: onEditingComplete,
    );
  }
}