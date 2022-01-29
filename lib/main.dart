import 'package:ecommerce_app/controller/product_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // final productController = Get.put(ProductController());
  final List catagories = [
    "All",
    "Pending",
    "Completed",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         padding:
                //             EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                //         decoration: BoxDecoration(
                //           color: Colors.white,
                //         ),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               "Clothes",
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             ),
                //             IconButton(
                //               onPressed: () {},
                //               icon: Icon(Icons.keyboard_arrow_down),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(Icons.filter_list),
                //     ),
                //   ],
                // ),
                buildContainerListView(),
                Container(
                  height: 575,
                  child: ListView.builder(
                      // itemCount: productController.productData.length,
                      padding: EdgeInsets.only(top: 65),
                      itemBuilder: (context, index) => myOrderContainer()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  myOrderContainer() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 10, bottom: 20),
      child: PhysicalModel(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            shadowColor: Colors.black,
            elevation: 5,
            child: Container(
              // decoration: BoxDecoration(
              //     color: Colo,
              //     borderRadius: BorderRadius.all(Radius.circular(21))),
              height: 110,
              width: 100,
              margin: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Container(
                    width: 110,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(21),
                      ),
                    ),
                    child: Container(
                      child: Image(
                        image: AssetImage("assets/images/Logo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Waqas",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "waqas****@gmail.com",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.5)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 55),
                          child: Text(
                            "03015276334",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.5)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Text(
                            "Rs. 3100",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }

  buildContainerListView() {
    return Container(
      height: 40,
      margin: EdgeInsets.only(top: 9),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) => Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300.withOpacity(.4),
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: Offset(5, 5)),
                  ],
                  color: index == 0
                      ? Colors.grey.withOpacity(.25)
                      : Colors.pinkAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      catagories[index],
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: index == 0 ? Colors.black : Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text(
                          "0",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Container(
  // child: Row(
  // children: [
  // Container(
  // height: 35,
  // margin: EdgeInsets.only(top: 16),
  // child: ListView.builder(
  // scrollDirection: Axis.horizontal,
  // itemCount: 3,
  // itemBuilder: (context, index) => Container(
  // margin: EdgeInsets.only(right: 8),
  // decoration: BoxDecoration(
  // color: Colors.grey.withOpacity(.3),
  // borderRadius: BorderRadius.circular(11)),
  // child: Text("All"),
  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
  // ),
  // ),
  // ),

  AppBar buildApp() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'My Order',
        style: TextStyle(
            fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }
}

// class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {
//   final List<Tab> myTabs = <Tab>[
//     Tab(text: 'LEFT'),
//     Tab(text: 'RIGHT'),
//     Tab(text: 'Center'),
//   ];

//   TabController controller;

//   @override
//   void onInit() {
//     super.onInit();
//     controller = TabController(vsync: this, length: myTabs.length);
//   }

//   @override
//   void onClose() {
//     controller.dispose();
//     super.onClose();
//   }
// }

// class MyTabbedWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final MyTabController _tabx = Get.put(MyTabController());

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         bottom: TabBar(
//           labelColor: Colors.black,
//           isScrollable: true,
//           controller: _tabx.controller,
//           tabs: List.generate(3, (index) => TabsButton()),
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabx.controller,
//         children: _tabx.myTabs.map((Tab tab) {
//           final String label = tab.text.toLowerCase();
//           return Center(
//             child: Text(
//               'This is the $label tab',
//               style: TextStyle(fontSize: 36),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// class TabsButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//      elevation: 6,
//      child: Text("Pizza", style: TextStyle(fontSize: 15),),
//     );
//   }
// }

// class MyOrder extends StatefulWidget {
//   @override
//   State<MyOrder> createState() => _MyOrderState();
// }

// class _MyOrderState extends State<MyOrder> with GetSingleTickerProviderStateMixin{
//   final List<Tab>

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               color: Colors.white,
//               height: 65,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Icon(Icons.arrow_back_ios_rounded),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 100),
//                     child: Text("My Orders", style: TextStyle(
//                       fontSize: 22, fontWeight: FontWeight.bold,
//                     ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               height: 110,
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.blue,
//             ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Padding(
//   padding: EdgeInsets.all(8),
//   child: Column(
//     children: [
//       Padding(
//         padding: EdgeInsets.only(left: 10),
//         child: Text(
//           "Waqas",
//           style: TextStyle(
//             fontSize: 19,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(top: 8.0),
//         child: Text(
//           "waqas****@gmail.com",
//           style: TextStyle(
//               fontSize: 13,
//               color: Colors.black.withOpacity(.5)),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(right: 60),
//         child: Text(
//           "03015276334",
//           style: TextStyle(
//               fontSize: 13,
//               color: Colors.black.withOpacity(.5)),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(right: 802),
//         child: Text(
//           "Rs. 3100",
//           style: TextStyle(
//               fontSize: 15,
//               color: Colors.black,
//               fontWeight: FontWeight.bold
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
