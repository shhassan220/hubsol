import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';













class ProductController extends GetxController{
  List<Product> productData = [];


  List <Product> cartItem = [];

  addtoCart(Product item) {
    cartItem.add(item);
  }

  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);
  int get count => cartItem.length;

  @override
  void onInit ()  {
    super.onInit();
    fatchProductData();
  }

  fatchProductData () async {

    await Future.delayed(Duration(seconds: 5),);
    List<Product> serverResponse = [
      Product(
        id: 1,
        price: 499,
        num: 84449848465,
        productEmail: "123****@gmail.com",
        productImage: "assets/images/123.jpg",
        productName: "Adventure",
      ),
      Product(
        id: 2,
        price: 699,
        num: 58462956584,
        productEmail: "741*****@gmail.com",
        productImage: "assets/images/741.jpg",
        productName: "BackGround",
      ),
      Product(
        id: 3,
        num: 16849846511,
        price: 899,
        productEmail: "pokemon*****@gmail.com",
        productImage: "assets/images/Logo.png",
        productName: "Pokemon",
      ),
      Product(
        id: 4,
        price: 999,
        num: 4984513144,
        productEmail: "altan*****@gmail.com",
        productImage: "assets/images/men.png",
        productName: "Altan",
      ),
      Product(
        id: 5,
        num: 64984065164,
        price: 1099,
        productEmail: "programmin****@gmail.com",
        productImage: "assets/images/Programming-2019.jpg",
        productName: "Pokemon",
      ),
      Product(
        id: 6,
        price: 1199,
        productEmail: "turgut*****@gmail.com",
        productImage: "assets/images/turgut.jpg",
        productName: "Pokemon",
        num: 12316564494,
      ),
      Product(
        id: 7,
        price: 1299,
        productEmail: "virtualoff****@gmail.com",
        productImage: "assets/images/virtual_office.jpg",
        productName: "Pokemon",
        num: 548432164484,
      ),
    ];
    productData.assignAll(serverResponse);
    print(productData);
    update();
  }
}