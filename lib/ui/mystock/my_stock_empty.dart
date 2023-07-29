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
            "No Keep...",
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
            "右上のプラスボタンから追加できます",
            style: TextStyle(
              fontSize: 14,
              color: Color(0x993C3C43),
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
