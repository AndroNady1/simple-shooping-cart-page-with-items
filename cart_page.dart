import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<DataProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          "My cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Text("- ${_provider.selectedItems[index].tile}  "
                    "                 ${_provider.selectedItems[index].price} \$ " ,
                    style: TextStyle(color: Colors.black,fontSize: 20)
                ),
              );
            },
            itemCount: _provider.selectedItems.length
        ),
      ),
      bottomSheet:Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              thickness: 5,
              color: Colors.black,
              height: 40,
            ),
            Text(
              " ${_provider.totalPrice} \$",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
