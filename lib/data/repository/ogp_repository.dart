import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/ogp_entity.dart';
import 'package:ogp_data_extract/ogp_data_extract.dart';

final ogpRepositoryProvider = Provider((ref) => OgpRepository());

class OgpRepository {
  Future<OgpEntity> loadOgpEntity(String url) async {
    final data = await OgpDataExtract.execute(url);
    if (data == null) {
      return OgpEntity.empty;
    }
    return OgpEntity(title: data.title ?? "", imageUrl: data.image);
  }
}
