import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';

// TODO デカクラスになっているのでコンポーネントを分ける
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
      child: Stack(
        children: [
          InkWell(
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
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
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
                      color: Color(0xFF898989),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 28,
              height: 28,
              child: ElevatedButton(
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0x809A9A9A),
                  onPrimary: Colors.black,
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  shape: const CircleBorder(),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
