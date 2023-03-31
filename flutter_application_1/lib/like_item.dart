import 'package:flutter/material.dart';

class LikeItems extends StatefulWidget {
  const LikeItems({super.key});

  @override
  State<LikeItems> createState() => _LikeItemsState();
}

class _LikeItemsState extends State<LikeItems>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: Text(
          'MY PRODUCTS',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_checkout_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: TabBar(
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                tabs: [
                  Tab(
                    icon: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                  ),
                  Tab(
                    text: '',
                  ),
                  Tab(
                    text: '',
                  )
                ]),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
          )
        ],
      ),
    );
  }
}
