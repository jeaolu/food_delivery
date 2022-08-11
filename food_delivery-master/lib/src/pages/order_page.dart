import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/sign_in_page.dart';
import 'package:food_delivery/src/widgets/order_card.dart';

class Order extends StatefulWidget {
  const Order({Key key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Your Food Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: [
           OrderCard(),
           OrderCard(),
           OrderCard(),
           OrderCard(),
           OrderCard(),
           OrderCard(),_buildTotalContainer(),
          ],
        ),
      ),

    );
  }
  Widget _buildTotalContainer() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(top: 20 ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // ListTile(
          //   leading: Text(
          //     'Cart total',
          //     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),
          //   ),
          //   trailing: Text(
          //     23.toString(),
          //     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
          //   ),
          // )
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cart total',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                23.toString(),
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                3.0.toString(),
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                0.5.toString(),
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(height: 20.0, color: Colors.grey,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                26.5.toString(),
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text(
                    'Proceed to checkout',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white ),
                  ),
                )),
          ),

        ],
      ),
    );
  }

}

