import 'package:flutter/material.dart';
import 'package:list_view/item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: 'Macbook',
        description:
            "MacBook is a brand of Mac notebook computers designed and marketed by Apple that use Apple's macOS operating system since 2006. ",
        prices: 25000000,
        image: 'assets/macbook.jpg',
        stock: 10),
    Item(
        name: 'Ipad',
        description:
            "iPad Air. Ringan. Berwarna. Bertenaga. Bertenaga super berkat chip Apple M1. ... dengan Center Stage.",
        prices: 15000000,
        image: 'assets/ipad.jpg',
        stock: 10),
    Item(
        name: 'Iphone',
        description:
            "The iPhone is a line of smartphones produced by Apple that use Apple's own iOS mobile operating system.",
        prices: 12000000,
        image: 'assets/iphone.jpg',
        stock: 20),
    Item(
        name: 'imac',
        description:
            " iMac menawarkan kanvas yang menakjubkan untuk multitasking, film dan game yang menghanyutkan, dan masih banyak lagi.",
        prices: 35000000,
        image: 'assets/imac.jpg',
        stock: 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping cart"),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.prices.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
