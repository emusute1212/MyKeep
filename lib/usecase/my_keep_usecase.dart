import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';
import 'package:mykeep/data/repository/ogp_repository.dart';

class MyKeepUsecase {
  final KeepItemRepository _keepItemRepository;
  final OgpRepository _ogpRepository;

  MyKeepUsecase(this._keepItemRepository, this._ogpRepository);

  Stream<void> observeKeepItem() {
    return _keepItemRepository.observeKeepItems();
  }

  Future<void> addKeepItem(String targetUrl) async {
    final ogpEntity = await _ogpRepository.loadOgpEntity(targetUrl);
    return _keepItemRepository.addKeepItem(
        ogpEntity.title, ogpEntity.imageUrl, targetUrl, DateTime.now());
  }

  Future<void> deleteKeepItem(KeepItem target) async {
    return _keepItemRepository.deleteKeepItem(target);
  }
}
