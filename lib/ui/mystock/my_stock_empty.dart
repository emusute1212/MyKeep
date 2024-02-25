import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyStockEmpty extends HookConsumerWidget {
  const MyStockEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/empty.svg",
          semanticsLabel: "empty",
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            "キープしよう",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            "プラスボタンから追加できます",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2D2D2D),
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
