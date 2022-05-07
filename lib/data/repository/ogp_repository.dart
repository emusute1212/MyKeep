import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:metadata_fetch/metadata_fetch.dart';
import 'package:mykeep/data/entity/ogp_entity.dart';

final ogpRepositoryProvider = Provider((ref) => OgpRepository());

class OgpRepository {
  Future<OgpEntity> loadOgpEntity(String url) async {
    final data = await MetadataFetch.extract(url);
    if (data == null) {
      return OgpEntity.empty;
    }
    return OgpEntity(title: data.title ?? "", imageUrl: data.image);
  }
}
