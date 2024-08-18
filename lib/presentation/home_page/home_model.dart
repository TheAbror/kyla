import 'package:flutter/material.dart';

class ShopModel {
  final int id;
  final double price;
  final String name;
  final String address;
  final String time;
  final Widget icon;

  ShopModel({
    required this.id,
    required this.price,
    required this.name,
    required this.address,
    required this.time,
    required this.icon,
  });
}

final allShops = [
  ShopModel(
    id: 0,
    price: -10.95,
    name: 'Cafe <<Billy`s Bakery>>',
    address: '75 Franklin St. New York. NY 10013, USA',
    time: '11:42',
    icon: const Icon(Icons.coffee_outlined, color: Colors.white),
  ),
  ShopModel(
    id: 1,
    price: -10.95,
    name: 'Cafe <<Billy`s Bakery>>',
    address: '81 Spring St A. New York. NY 10012, USA',
    time: '11:42',
    icon: const Icon(Icons.coffee_outlined, color: Colors.white),
  ),
  ShopModel(
    id: 2,
    price: -122,
    name: 'Shop <<MoMa Design Store>>',
    address: '75 Franklin St. New York. NY 10013, USA',
    time: '13:10',
    icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
  ),
  ShopModel(
    id: 3,
    price: -52.39,
    name: 'Pet beauty salon <<Candy`s>>',
    address: '200 LAfavetter St. New York. NY 10012, USA',
    time: '14:07',
    icon: const Icon(Icons.pets_outlined, color: Colors.white),
  ),
];
