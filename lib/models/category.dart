import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/image/apple.jpg",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/image/mango.png",
    title: "mango-Agroponiente",
    price: 99,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/image/watermelon.jpg",
    title: "watermelon",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/image/orange.jpg",
    title: "orange",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/image/watermelon.jpg",
    title: "watermelon",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
];
