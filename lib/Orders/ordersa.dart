import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/constants.dart';
import '../HRMS_admin_Screen/adbranchpg2.dart';
import 'ordersb.dart';

class Ordera extends StatefulWidget {
  const Ordera({Key? key}) : super(key: key);

  @override
  _HRMSadmincustState createState() => _HRMSadmincustState();
}

class _HRMSadmincustState extends State<Ordera> {
  String initialValue = '';

  var itemList = [
    'Pending',
    'Delivered',
    'Refunds',

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:  Column(
                children: [

                  SizedBox(height: 30),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Orders',style: TextStyle(color:kblue,fontSize: 35),
                            ),

                          ),
                          InkWell(onTap: (){
                            Get.to(Addorder23());
                          },child: Image.asset('asset/addnew.png')),

                        ],
                      ),

                      SizedBox( height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'asset/filter_icon.png',height: 20,width: 15,

                          ),



                          Text("Filter Result by :",style: TextStyle(color:kblue,fontSize: 20,

                          )
                          ),
                          Container(
                            height:25,
                            decoration: BoxDecoration(
                                color:  bgGrey,
                                borderRadius: BorderRadius.circular(10)

                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [

                                  SizedBox( width: 40),
                                  DropdownButton(

                                    icon: Icon(Icons.keyboard_arrow_down,color: Kdblue,),

                                    items: itemList.map((String items) {

                                      return DropdownMenuItem(value: items, child: Text(items));

                                    }).toList(), onChanged: (String? value) {  },
                                  ),


                                ],
                              ),
                            ),



                          ),

                        ],

                      ),








                      SizedBox( height: 20),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(

                              decoration: BoxDecoration(

                                color: mannu,


                                borderRadius: BorderRadius.circular(15),

                              ),
                              child: Align(
                                alignment: Alignment.topLeft,

                                child: Padding(
                                  padding: const EdgeInsets.all(13),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Order Number',
                                                    style: TextStyle(
                                                      color: Colors.yellow.shade600,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Container(
                                                        width: 100,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                          color: kyellow,
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Delivered',
                                                            style: TextStyle(
                                                                color: Colors.black, fontSize: 15),
                                                          ),
                                                        ),
                                                      ),
                                                  SizedBox(width: 5),
                                                  Container(
                                                        width: 100,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                          color: kyellow,
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Veiw Order',
                                                            style: TextStyle(
                                                                color: Colors.black, fontSize: 15),
                                                          ),
                                                        ),
                                                      ),
                                                ],
                                              ),
                                              OrderFields('Customer Name:'),
                                              OrderFields('Customer Number:'),
                                              OrderFields('Customer Address:'),
                                              OrderFields('Date:'),
                                              OrderFields('Prize:'),
                                              OrderFields('Quantity:'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),
                              ),

                            ),
                          );
                        }
                      ),
                      SizedBox( height: 18),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text OrderFields(text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }
}
