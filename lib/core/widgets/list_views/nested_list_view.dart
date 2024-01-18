import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_dimens.dart';
import 'package:my_app/core/widgets/list_views/list_view.dart';

class NestedListView extends StatelessWidget {
  final List<Widget> children;

  const NestedListView({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return MyListView(
      shrinkwrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.all(AppDimens.md),
      children: children,
    );
  }
}
