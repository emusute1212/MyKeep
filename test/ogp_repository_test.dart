import 'package:flutter_test/flutter_test.dart';
import 'package:mykeep/data/repository/ogp_repository.dart';

// TODO 冪等性の無いテストなので要修正
void main() {
  test('OGPが存在するサイトのテスト', () async {
    final ogpRepository = OgpRepository();
    final result =
        await ogpRepository.loadOgpEntity("https://qiita.com/emusute1212");

    expect(result.title, '@emusute1212のマイページ - Qiita');
    expect(result.imageUrl,
        'https://cdn.qiita.com/assets/qiita-ogp-3b6fcfdd74755a85107071ffc3155898.png');
  });
  test('OGPが存在しないサイトのテスト', () async {
    final ogpRepository = OgpRepository();
    final result = await ogpRepository.loadOgpEntity("https://example.com");

    expect(result.title, 'Example Domain');
    expect(result.imageUrl, null);
  });
  test('接続できないサイトのテスト', () async {
    final ogpRepository = OgpRepository();
    final result = await ogpRepository.loadOgpEntity("あああ");

    expect(result.title, 'Undefined');
    expect(result.imageUrl, null);
  });
}
