import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_dimens.dart';
import 'package:my_app/core/widgets/tooltip.dart';

abstract class ExpansionPanelItem extends StatelessWidget {
  String get header;
  String? get tooltip => null;

  const ExpansionPanelItem({super.key});
}

class MyExpansionPanelList extends StatefulWidget {
  final List<ExpansionPanelItem> items;
  final Color? color;

  MyExpansionPanelList({
    super.key,
    List<ExpansionPanelItem>? items,
    ExpansionPanelItem? item,
    this.color,
  })  : assert(items != null || item != null),
        items = items ?? [item!];

  @override
  State<MyExpansionPanelList> createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  late final List<bool> _expandStates;

  @override
  void initState() {
    super.initState();
    _expandStates = List.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (int index, bool isExpanded) => setState(
          () => _expandStates[index] = isExpanded,
        ),
        children: widget.items.mapIndexed((index, item) {
          return ExpansionPanel(
            headerBuilder: (context, isExpanded) => _Header(item: item),
            body: item,
            isExpanded: _expandStates[index],
            canTapOnHeader: true,
            backgroundColor: widget.color,
          );
        }).toList(),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final ExpansionPanelItem item;

  const _Header({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.md * 1.5,
        horizontal: AppDimens.md,
      ),
      child: MyTooltip(
        tooltip: item.tooltip,
        child: Text(
          item.header,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
