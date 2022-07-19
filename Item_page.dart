import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'data.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatelessWidget {
  TextStyle textStyle = TextStyle(color: Colors.black);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Items",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22),
          ),

          backgroundColor:
          Colors.lightBlue,
          centerTitle: true,

          actions: [
            Consumer<DataProvider>(builder: (context, _provider, _) {
              return Center(
                  child: Text(
                    "${_provider.totalPrice} \$",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  )
              );
            }
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartPage();
                  }
                  )
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )
            )
          ],
        ),
        body:Consumer<DataProvider>(builder: (context,_provider,_){
          return   ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      _provider.items[index].tile,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18)
                  ),
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: _provider.items[index].img,
                  ),
                  trailing: TextButton(
                      child: _provider.items[index].isSelected ? Icon(Icons.done)
                          : Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15)
                      ),
                      onPressed: () {
                        _provider.addIem(index);
                      }
                      ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox();
              },
              itemCount: _provider.items.length);
        })

    );
  }
}


