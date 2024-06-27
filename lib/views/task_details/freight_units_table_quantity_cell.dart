import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/freight_units/freight_units_providers.dart";

class FreightUnitsTableQuantityCell extends HookConsumerWidget {
  const FreightUnitsTableQuantityCell({
    super.key,
    required this.readOnly,
    required this.editMode,
    required this.freightUnit,
    required this.toggleEditMode,
  });

  final bool readOnly;
  final bool editMode;
  final FreightUnit freightUnit;
  final VoidCallback toggleEditMode;

  @override
  Widget build(final context, final ref) {
    final focusNode = useFocusNode();

    final updateFreightUnitNotifier = ref.watch(updateFreightUnitProvider(freightUnit.id!).notifier);

    final initialQuantityString = freightUnit.quantity == null ? "" : freightUnit.quantity.toString();
    final textEditController = useTextEditingController(text: initialQuantityString);

    useEffect(() => focusNode.requestFocus, [ editMode ],);

    void onEditingComplete() {
      final newQuantity = double.tryParse(textEditController.text);
      if (newQuantity != null && newQuantity != freightUnit.quantity) {
        updateFreightUnitNotifier.mutate(
          freightUnit.id!,
          freightUnit.rebuild((final builder) => builder.quantity = newQuantity),
        );
      } else {
        textEditController.text = initialQuantityString;
      }
      FocusManager.instance.primaryFocus?.unfocus();
      toggleEditMode();
    }

    focusNode.addListener(() {
      if (editMode && !focusNode.hasFocus) {
        onEditingComplete();
      }
    });


  Widget renderSuffixIcon() =>
    IconButton(
      onPressed: onEditingComplete,
      icon: Icon(
        editMode ? Icons.check : Icons.edit,
        size: 20,
        color: Colors.black54,
      ),
    );

    return TextField(
      focusNode: focusNode,
      readOnly: !editMode,
      contextMenuBuilder: (final _, final __) => const SizedBox.shrink(),
      keyboardType: TextInputType.number,
      controller: textEditController,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(255, 255, 0, editMode ? 0.5 : 0.0),
        filled: true,
        border: InputBorder.none,
        suffixIcon: renderSuffixIcon(),
        ),
    );
  }
}