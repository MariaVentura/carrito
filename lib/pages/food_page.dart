import 'package:carrito/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Network'),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            //return FlatButton(
            return FlatButton(
              child: const Text('Sign out'),
              textColor: Theme.of(context).buttonColor,
              onPressed: () async {
                controller.signOut();
              },
            );
          })
        ],
      ),
      body: Center(
        child: Text('Food Page',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black)),
      ),
    );
  }
}
