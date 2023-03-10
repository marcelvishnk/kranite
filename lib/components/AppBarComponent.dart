import 'package:flutter/material.dart';
import 'package:kranite/pages/WishlistPage.dart';

AppBar AppBarComponent(BuildContext context, scaffoldKey) {
  return AppBar(
    toolbarHeight: 85,
    elevation: 0,
    backgroundColor: Theme.of(context).primaryColor,
    title: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Image.asset(
        "images/fortnite.png",
        width: 200,
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => scaffoldKey.currentState!.openDrawer(),
    ),
    centerTitle: true,
  );
}
