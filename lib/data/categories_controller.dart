import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CategoriesController extends GetxController implements GetxService {
  Uint8List? fileName = Uint8List(8);
  File? pickedImage;

  imagePicker() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      var f = await image.readAsBytes();
      log(fileName!.toString());
      fileName = f;
      pickedImage = File('');
      update();
    }
  }

  static CategoriesController get i => Get.put(CategoriesController());
}
