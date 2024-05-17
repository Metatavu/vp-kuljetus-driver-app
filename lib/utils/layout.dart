import "package:collection/collection.dart";
import "package:flutter/material.dart";

List<Widget> withDividers(final Iterable<Widget> widgets) => widgets
    .expandIndexed(
      (final index, final element) => [
        element,
        if (index < widgets.length - 1)
          const Divider(
            height: 2,
            color: Colors.black12,
            indent: 16,
            endIndent: 16,
          ),
      ],
    )
    .toList();
