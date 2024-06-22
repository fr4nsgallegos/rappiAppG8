import 'package:flutter/material.dart';
import 'package:rappiappg8/widgets/product_container.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Buscar",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          // suffix: Icon(
                          //   Icons.search,
                          //   color: Colors.grey,
                          // ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Promociones 🔥",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      "Todo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2 - 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCotainer(),
                    ProductCotainer(),
                    ProductCotainer(),
                    ProductCotainer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
