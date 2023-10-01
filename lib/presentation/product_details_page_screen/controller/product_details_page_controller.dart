import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/presentation/product_details_page_screen/models/product_details_page_model.dart';

class ProductDetailsPageController extends GetxController {
  Rx<ProductDetailsPageModel> productDetailsPageModelObj =
      ProductDetailsPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
