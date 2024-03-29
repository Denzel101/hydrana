import 'package:flutter/material.dart';
import '../pages/signin_page.dart';
//widgets
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  @override 
 _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  @override
  Widget build (BuildContext context){
    return 
     Scaffold(
       appBar: AppBar(
        title: Text(
          "Your Drinks Cart", style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
            body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
               OrderCard(),
             OrderCard(),
             OrderCard(),
             OrderCard(),
          ],
        ),
        bottomNavigationBar: _buildTotalContainer() ,
     );
  }
  Widget _buildTotalContainer(){
    return Container(
      height: 260.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          // ListTile(
          //   leading: Text("Cart Total",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
          //   trailing: Text("500",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),
          // ),
          //      ListTile(
          //   leading: Text("Tax",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
          //   trailing: Text("25",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),
          // ),
          //      ListTile(
          //   leading: Text("Delivery",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
          //   trailing: Text("100",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),
          // ),
          //      ListTile(
          //   leading: Text("Discount",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
          //   trailing: Text("0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),
          // ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text("Cart Total",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("500",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10.0,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text("Tax",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("25",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10.0,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text("Delivery",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("100",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10.0,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text("Promo Discount",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("0",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
          Divider(height: 30.0, color:  Color(0xFFD3D3D3),),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text("SubTotal",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("625",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
          SizedBox(
            height: 40.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
              },
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),

            ),
            child: Center(
              child: Text(
              "Proceed to Checkout",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              ),
          ),
          ),
            ),
          

        ],
      ),
    );

  }
}