import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_dimens.dart';

class MyTooltip extends StatelessWidget {
  final String? tooltip;
  final Widget child;

  const MyTooltip({super.key, this.tooltip, required this.child});

  @override
  Widget build(BuildContext context) {
    return tooltip != null
        ? Tooltip(
            message: tooltip!,
            padding: const EdgeInsets.all(AppDimens.md / 2),
            child: child,
          )
        : child;
  }
}
