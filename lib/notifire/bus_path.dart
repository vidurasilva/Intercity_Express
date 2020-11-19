import 'package:flutter/material.dart';
import 'package:Intercity_Express/models/product.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class BussPath extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> _cart = [];
  Product _active = null;

  List<Product> get products => _products;
  List<Product> get cart => _cart;
  Product get activeProduct => _active;

  setActiveProduct(Product product) {
    _active = product;
  }

  clearCart() {
    for (Product p in _products) {
      p.quantity = 0;
    }
    cart.clear();
    notifyListeners();
  }

  addItemToCart(Product _product) {
    print("adding ${_product.name}");
    Product found =
        cart.firstWhere((p) => p.id == _product.id, orElse: () => null);
    if (found != null) {
      found.quantity += 1;
    } else {
      cart.add(_product);
      _product.quantity += 1;
    }
    notifyListeners();
  }

  removeItemFromCart(Product _product) {
    Product found =
        cart.firstWhere((p) => p.id == _product.id, orElse: () => null);
    if (found != null && found.quantity == 1) {
      _product.quantity = 0;
      cart.remove(_product);
    }
    if (found != null && found.quantity > 1) {
      found.quantity -= 1;
    }
    notifyListeners();
  }

  int getCartQuantity() {
    int total = 0;
    for (Product p in _cart) {
      total += p.quantity;
    }
    return total;
  }

  double getCartTotal() {
    double price = 0;
    for (Product p in _cart) {
      price += (p.price * p.quantity);
    }
    return price;
  }
}
