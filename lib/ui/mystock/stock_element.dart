import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mykeep/data/entity/keep_item.dart';

// TODO デカクラスになっているのでコンポーネントを分ける
class StockElement extends HookConsumerWidget {
  const StockElement({
    super.key,
    required this.item,
    required this.onTapItem,
    required this.onTapItemCheck,
  });

  final KeepItem item;
  final Function(KeepItem) onTapItem;
  final Function(KeepItem) onTapItemCheck;

  static final _displayDateFormatter = DateFormat('yyyy年MM月dd日');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Change color animation
    final AnimationController changeColorAnimationController =
        useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    final changeColorAnimation = ColorTween(
      begin: const Color(0x802D2D2D),
      end: const Color(0xFF09BC8A),
    ).animate(changeColorAnimationController);
    useAnimation(changeColorAnimationController);

    // Fadeout animation
    final AnimationController fadeOutAnimationController =
        useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    final fadeOutAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(fadeOutAnimationController);
    useAnimation(fadeOutAnimationController);

    return Opacity(
      opacity: fadeOutAnimation.value,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        margin: EdgeInsets.zero,
        child: Stack(
          children: [
            InkWell(
              onTap: () => onTapItem(item),
              child: Column(
                children: <Widget>[
                  Ink.image(
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: getImageProviderFromUrl(
                      item.imageUrl,
                      (err) {
                        print("getImageProviderFromUrl error: $err");
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      item.title,
                      strutStyle: const StrutStyle(
                        fontSize: 14,
                        height: 1.4,
                      ),
                      style: const TextStyle(
                        color: Color(0xFF000000),
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
                      bottom: 8,
                    ),
                    child: Text(
                      _displayDateFormatter.format(item.createAt),
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
                decoration: ShapeDecoration(
                  color: changeColorAnimation.value,
                  shape: const CircleBorder(),
                ),
                child: IconButton(
                  splashRadius: 18,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.check_rounded),
                  color: Colors.white,
                  iconSize: 18,
                  onPressed: () {
                    changeColorAnimationController.forward().then((value) {
                      fadeOutAnimationController.forward().then((value) {
                        onTapItemCheck(item);
                        changeColorAnimationController.reset();
                        fadeOutAnimationController.reset();
                      });
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ImageProvider getImageProviderFromUrl(
    String? imageUrl,
    Function(Object) onError,
  ) {
    ImageProvider imageProvider;
    if (imageUrl != null) {
      imageProvider = CachedNetworkImageProvider(
        imageUrl,
        errorListener: onError,
      );
    } else {
      imageProvider = const Svg(
        "assets/default.svg",
      );
    }
    return imageProvider;
  }
}
