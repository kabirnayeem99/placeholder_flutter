import 'package:get/get.dart';

import '../services/local_storage.dart';

initServices() async {
  await Get.putAsync(() => LocalStorageService().init());
}
