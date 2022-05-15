import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';

class StockElement extends HookConsumerWidget {
  const StockElement({
    Key? key,
    required this.item,
  }) : super(key: key);

  final KeepItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          child: InkWell(
            child: Column(
              children: <Widget>[
                Image.network(
                  item.imageUrl ?? "",
                ),
                Padding(
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
                      color: Color(0x00000000),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 2,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    item.createAt.toString(),
                    style: const TextStyle(
                      fontFamily: 'SFProDisplay',
                      color: Color(0x00898989),
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
