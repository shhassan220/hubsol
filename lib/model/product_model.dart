import 'package:flutter/material.dart';

class Product {
  final int id;
  final int num;
  final String productName;
  final String productImage;
  final String productEmail;
  final double price;

  Product({
    @required this.id,
    @required this.num,
    @required this.productName,
    @required this.productImage,
    @required this.productEmail,
    @required this.price,
  }
  );
}
