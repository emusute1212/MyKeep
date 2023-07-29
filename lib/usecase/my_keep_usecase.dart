import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/data/entity/ogp_entity.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';
import 'package:mykeep/data/repository/ogp_repository.dart';

final myKeepUsecaseyProvider = Provider((ref) {
  return MyKeepUsecase(
      ref.read(keepItemRepositoryProvider), ref.read(ogpRepositoryProvider));
});

class MyKeepUsecase {
  final KeepItemRepository _keepItemRepository;
  final OgpRepository _ogpRepository;

  MyKeepUsecase(this._keepItemRepository, this._ogpRepository);

  Stream<List<KeepItem>> observeKeepItem() {
    return _keepItemRepository.observeKeepItems();
  }

  Future<String> getTitle(String targetUrl) async {
    final ogpEntity = await _ogpRepository.loadOgpEntity(targetUrl);
    return ogpEntity.title;
  }

  Future<bool> addKeepItem(String targetUrl) async {
    try {
      final OgpEntity ogpEntity = await _ogpRepository.loadOgpEntity(targetUrl);
      _keepItemRepository.addKeepItem(
          ogpEntity.title, ogpEntity.imageUrl, targetUrl, DateTime.now());
      return true;
    } catch (e) {
      _keepItemRepository.addKeepItem(
          targetUrl, null, targetUrl, DateTime.now());
      return false;
    }
  }

  Future<void> updateKeepItem(KeepItem targetItem) async {
    return _keepItemRepository.updateKeepItem(targetItem);
  }

  Future<void> deleteKeepItem(KeepItem target) async {
    return _keepItemRepository.deleteKeepItem(target);
  }
}
