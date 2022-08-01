import 'package:get/get.dart';
import 'package:simple_project_getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(
          id: 1,
          price: 300,
          productName: "Android Smartwatch",
          productDescription: "Some description about product",
          productImage: "https://unsplash.com/photos/2cFZ_FB08UM"),
      Product(
          id: 2,
          price: 50,
          productName: "car",
          productDescription: "Some description about product",
          productImage: "https://unsplash.com/photos/p0OlRAAYXLY"),
      Product(
          id: 3,
          price: 65,
          productName: "Xbox controller",
          productDescription: "Some description about product",
          productImage: "https://unsplash.com/photos/S__3xvlGDe8"),
      Product(
          id: 4,
          price: 650,
          productName: "controller",
          productDescription: "Some description about product",
          productImage: "https://unsplash.com/photos/S__3xvlGDe8"),
      Product(
          id: 5,
          price: 150,
          productName: "Xbox",
          productDescription: "Some description about product",
          productImage: "https://unsplash.com/photos/S__3xvlGDe8"),
    ];

    products.value = serverResponse;
  }
}
