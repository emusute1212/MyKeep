import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';

class StockElement extends HookConsumerWidget {
  const StockElement({
    Key? key,
    required this.item,
    required this.onTapItem,
  }) : super(key: key);

  final KeepItem item;
  final Function(KeepItem) onTapItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () => onTapItem(item),
        child: Column(
          children: <Widget>[
            Ink.image(
              height: 120,
              fit: BoxFit.fitHeight,
              image: NetworkImage(
                item.imageUrl ?? "",
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 8,
                left: 10,
                right: 10,
                bottom: 8,
              ),
              child: Text(
                item.title,
                style: const TextStyle(
                  fontFamily: 'SFProDisplay',
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 2,
                left: 10,
                right: 10,
              ),
              child: Text(
                item.createAt.toString(),
                style: const TextStyle(
                  fontFamily: 'SFProDisplay',
                  color: Color(0xFF898989),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
