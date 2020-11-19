import 'package:Intercity_Express/models/product.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Store {
  List<Product> _products = [];
  Store() {
    _products = [
      Product(1, "Blue Tee", 2500.00, 0, "blue.png", lipsum.createParagraph()),
      Product(2, "Red Tee", 2500.00, 0, "red.png", lipsum.createParagraph()),
      Product(
          3, "Green Tee", 2500.00, 0, "green.png", lipsum.createParagraph()),
    ];
  }
}
