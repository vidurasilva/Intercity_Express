import 'package:Intercity_Express/notifire/bus_path.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:badges/badges.dart';
import 'package:Intercity_Express/store/store.dart';
import 'package:Intercity_Express/widgets/product_list_item.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<BussPath>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google Perks Store",
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black45,
            ),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
          // Badge(
          //   showBadge: store.getCartQuantity() > 0,
          //   position: BadgePosition(top: 0, end: 2.0),
          //   animationType: BadgeAnimationType.scale,
          //   badgeContent: Text(
          //     store.getCartQuantity().toString(),
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //       color: Colors.black45,
          //     ),
          //     onPressed: () => Navigator.pushNamed(context, '/cart'),
          //   ),
          // ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Just For You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black87)),
                FlatButton(
                    onPressed: () => {},
                    child: Text("View All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green))),
              ],
            ),
          ),
          ...store.products.map((item) {
            return InkWell(
                onTap: () {
                  store.setActiveProduct(item);
                  Navigator.pushNamed(context, '/product');
                },
                child: ProductListItem(product: item));
          }),
        ],
      ),
    );
  }
}
