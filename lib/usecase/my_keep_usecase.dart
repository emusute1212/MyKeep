import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';
import 'package:mykeep/data/repository/ogp_repository.dart';

class MyKeepUsecase {
  KeepItemRepository keepItemRepository;
  OgpRepository ogpRepository;

  MyKeepUsecase(this.keepItemRepository, this.ogpRepository);

  Stream<void> observeKeepItem() {
    return keepItemRepository.observeKeepItems();
  }

  Future<void> addKeepItem(String targetUrl) async {
    var ogpEntity = await ogpRepository.loadOgpEntity(targetUrl);
    return keepItemRepository.addKeepItem(
        ogpEntity.title, ogpEntity.imageUrl, targetUrl, DateTime.now());
  }

  Future<void> deleteKeepItem(KeepItem target) async {
    return keepItemRepository.deleteKeepItem(target);
  }
}
