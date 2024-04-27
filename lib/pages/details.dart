import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({Key? key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Malay salad",
                      style: AppWidget.semiBooldTextFeildStyle(),
                    ),
                    Text(
                      "spicy chicken salad",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBooldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis congue facilisis risus, et lacinia felis congue vel. Ut sapien massa, Praesent id tellus sapien",
              maxLines: 4,
              style: AppWidget.LightLineTextFeildStyle(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.semiBooldTextFeildStyle(),
                ),
                SizedBox(
                  width: 25.0, // Changed height to width
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 5.0, // Changed height to width
                ),
                Text(
                  "30 min",
                  style: AppWidget.semiBooldTextFeildStyle(),
                )
              ],
            ),
            Spacer(),
            Padding(
              // Corrected syntax
              padding: const EdgeInsets.only(bottom: 40.0), // Corrected syntax
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Corrected syntax
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiBooldTextFeildStyle(),
                      ), // Added a child parameter
                      Text(
                        "10RM",
                        style: AppWidget.HeadLineTextFeildStyle(),
                      ), // Added a child parameter
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min, // Corrected syntax
                          children: [
                            Text(
                              "Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins'),
                            ), // Added a comma
                            SizedBox(width: 30.0),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ), // Corrected spelling
                            ),
                            SizedBox(width: 10.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
