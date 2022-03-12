import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/constants.dart';

class Addnewvendorb extends StatefulWidget {
  const Addnewvendorb({Key? key}) : super(key: key);

  @override
  _AddnewvendorState createState() => _AddnewvendorState();
}

class _AddnewvendorState extends State<Addnewvendorb> {


  var itemList = [
    'Product category',
    'product category1',
    'product category2',
    'product category3',
    'product category4',

  ];

  bool  avalue = false;
  bool  bvalue = false;
  bool  cvalue = false;
  bool  dvalue = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,

          child: SingleChildScrollView(
            child: Padding(
              padding:   EdgeInsets.all(20.0),
              child:  Column(
                children: [

                  SizedBox(height: 25),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Add New Vendor',style: TextStyle(fontSize: 30,color: kblue),)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Kdblue,
                        ),
                        child: Padding(
                          padding:   EdgeInsets.all(5.0),
                          child: Center(child: Text('Contact Info',style: TextStyle(color: Colors.white,fontSize: 15),)),
                        ),

                      ),SizedBox(width: 20,),
                      Container(
                        width: 140,
                        height: 36,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(border: Border.all(
                          color: Kdblue,
                        )),
                        child: Padding(
                          padding:   EdgeInsets.all (8),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Sales & Purchase',style: TextStyle(fontSize: 15,color: kblue),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Sales Person',style: TextStyle(fontSize: 18,color:kblue ),)),
                  Divider(
                    height: 5,thickness: 1,color: kblue,
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Payment Terms',style: TextStyle(fontSize: 18,color:kblue ),)),
                  Divider(
                    height: 5,thickness: 1,color: kblue,
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Payment Method',style: TextStyle(fontSize: 18,color:kblue ),)),
                  Divider(
                    height: 5,thickness: 1,color: kblue,
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Bank Accounts',style: TextStyle(fontSize: 18,color:kblue ),)),
                  Divider(
                    height: 5,thickness: 1,color: kblue,
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,
                          hintText: "Account Number",

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,
                          hintText: "Acc Type",

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: 180,


                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                        child: TextFormField(
                          decoration: InputDecoration(

                              filled: true,
                              fillColor: bgGrey,
                              hintText: "IFSC Code",


                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              )

                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 37,
                        width: 180,

                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                        child: TextFormField(
                          decoration: InputDecoration(

                            filled: true,
                            fillColor: bgGrey,
                            hintText: "MMID",


                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            enabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,
                          hintText: "City",

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 37,

                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                    child: TextFormField(
                      decoration: InputDecoration(

                          filled: true,
                          fillColor: bgGrey,
                          hintText: "Branch",

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )

                      ),
                    ),
                  ),


                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 35,width: 100,
                        child: ElevatedButton(onPressed: (){
                          // Get.back();
                        },

                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                side: BorderSide(width: 3.0, color: kblue ),
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 11),
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            child: Center(child: Text('Clear',style: TextStyle(
                                color: kblue,fontSize: 15
                            ),))),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 110,
                        height: 35,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade900,
                              Colors.blue,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),


                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text('ADD',style: TextStyle(
                                color: Colors.white,fontSize: 15
                            ),),
                          ),
                        ),

                      ),
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
}
