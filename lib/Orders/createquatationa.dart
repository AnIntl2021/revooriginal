import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:revoo/Orders/quotation.dart';

import '../constants/constants.dart';

class Createquotation25 extends StatefulWidget {
  const Createquotation25({Key? key}) : super(key: key);

  @override
  _Createquotation25State createState() => _Createquotation25State();
}

class _Createquotation25State extends State<Createquotation25> {
  int groupvalue = 0;
  int yesvslue = 0;
  int novalue = 1;
  int govalue = 2;
  bool value1 = false;

  TextEditingController customername = TextEditingController();
  TextEditingController customernumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController itemdescription = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var firestore = FirebaseFirestore.instance.collection("AddQuotation");
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  print('clicked');
                                },
                                child: Image.asset(
                                  'asset/navicon.png',
                                )),
                            SizedBox(width: 120),
                            Image.asset('asset/bellicon.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('asset/settingsicon.png'),
                            SizedBox(
                              width: 6,
                            ),
                            Image.asset('asset/usericon.png'),
                            SizedBox(width: 10),
                          ],
                        ),
                        Align(alignment: Alignment.centerLeft,
                          child: Text(
                            "Create  Quotation",
                            style: TextStyle(fontSize: 30, height: 3, color: kblue),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Customer Name",
                              style: TextStyle(color: kblue),
                            )),
                        SizedBox(height: 5),
                        Divider(
                          height: 1,
                        ),
                        SizedBox(height: 10),
                        QuotationTextfeild(customername),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Customer Number",
                            style: TextStyle(color: kblue),
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        SizedBox(height: 5),
                        QuotationTextfeild(customernumber),
                        SizedBox(height: 10),
                        Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Email",
          style: TextStyle(color: kblue),
        ),
      ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(height: 5),
                        QuotationTextfeild(email),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Item Description",
                            style: TextStyle(color: kblue),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(height: 5),
                        QuotationTextfeild(itemdescription),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Quantity",
                            style: TextStyle(color: kblue),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(height: 5),
                        QuotationTextfeild(quantity ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Amount",
                            style: TextStyle(color: kblue),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(height: 5),
                        QuotationTextfeild(amount ),
                        SizedBox(height: 30),

                        InkWell(
                          onTap: (){
                            firestore.add(
                              {
                                "customer_name" : customername.text,
                                "customer_number" : customernumber.text,
                                "email" : email.text,
                                "quantity" : quantity.text,
                                "item_description" : itemdescription.text,
                                "amount" : amount.text,

                              }).then((value) {firestore.doc(value.id);});
                            Get.to(Quotation());
                          },
                          child: Container(
                           width: 150,
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
                                child: Text(
                                  'Add Quotation',
                                  style: TextStyle(color: Colors.white, fontSize: 15),),),),),
                        ),
                      ],),),],),)),),);
  }

  Container QuotationTextfeild(controller)  {
    return Container(
                        height: 32,
                        child: TextFormField(
                          controller:controller,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: bgGrey,
                            contentPadding:
                            EdgeInsets.only(left: 20, top: 2, bottom: 3),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                          ),
                        ),
                      );
  }
}
