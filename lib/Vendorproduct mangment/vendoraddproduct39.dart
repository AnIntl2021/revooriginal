import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../Controllers/IpcatagoryController.dart';
import '../constants/constants.dart';
import '../model/IpcatagoryModel.dart';
import '../model/componentmodel.dart';
import 'addproductselectcomponent.dart';

class Addproduct39 extends StatefulWidget {

  const Addproduct39({Key? key, }) : super(key: key);

  @override
  _Addproduct39State createState() => _Addproduct39State();
}

class _Addproduct39State extends State<Addproduct39> {

  File? image;
  File? image1;
  Future pickImage() async{
    try {
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporory = File(image!.path);
      setState(() =>
        this.image = imageTemporory);

    } on PlatformException catch (e){
      print('Failed to pick image: $e');
    }
  }

  Future pickImage1() async{
    try {
      await ImagePicker().pickImage(source: ImageSource.camera,);
      if (image == null) return;
      final imageTemporory = File(image!.path);
      setState(() =>
      this.image = imageTemporory);

    } on PlatformException catch (e){
      print('Failed to pick image: $e');
    }
  }


  String initialValue = 'Product category';
var productcategoryvalue = 'Product category0';

  var itemList = [
    // 'Product category',
    // 'product category1',
    // 'product category2',
    // 'product category3',
    // 'product category4',
    DropdownMenuItem(child: Text('Product category0'),value:'Product category0' ,),
    DropdownMenuItem(child: Text('Product category1'),value:'Product category1' ,),
    DropdownMenuItem(child: Text('Product category2'),value:'Product category2' ,),
    DropdownMenuItem(child: Text('Product category3'),value:'Product category3' ,),
    DropdownMenuItem(child: Text('Product category4'),value:'Product category4' ,),
  ];
  String initialValue1 = 'Product Component';
  var componentlist =[
    'Product Component',
    'product Component1',
    'product Component2',
    'product Component3',
    'product Component4',
  ];
  TextEditingController productname = TextEditingController();
  TextEditingController producttype = TextEditingController();
  TextEditingController sellprice = TextEditingController();
  TextEditingController costprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var firestore = FirebaseFirestore.instance;
     return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,


          child: SingleChildScrollView(
            child: StreamBuilder<QuerySnapshot<Map<String,dynamic>>>(
              stream:firestore.collection('product').snapshots() ,
              builder: (context,snapshot){
                if(!snapshot.hasData){
                  return kprogressbar;
                }

                return Padding(
                  padding:   EdgeInsets.all(20.0),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: (){

                              },
                              child: Image.asset('asset/navicon.png',)),
                          Row(
                            children: [
                              SizedBox(width: 140),
                              Image.asset('asset/bellicon.png'),
                              SizedBox(width: 20),
                              Image.asset('asset/settingsicon.png'),
                              SizedBox(width: 20),
                              Image.asset('asset/usericon.png'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Add New Product',style: TextStyle(fontSize: 30,color: kblue),)),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       width: 145,
                      //       height: 36,
                      //       decoration: BoxDecoration(
                      //         color: Kdblue,
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(5.0),
                      //         child: Row(
                      //           children: [
                      //             Text('Purchased :',style: TextStyle(color: Colors.white,fontSize: 15),),
                      //             SizedBox(width: 8,),
                      //             Container(
                      //               width: 45,
                      //               height: 22,
                      //               decoration: BoxDecoration(color: bgGrey),
                      //               child: Center(child: Text("24",style: TextStyle(color: kyellow,fontSize:15),)),
                      //             ),
                      //
                      //           ],
                      //         ),
                      //       ),
                      //
                      //     ),SizedBox(width: 20,),
                      //     Container(
                      //       width: 130,
                      //       height: 36,
                      //       margin: EdgeInsets.all(8),
                      //       decoration: BoxDecoration(border: Border.all(
                      //           color: Kdblue,width: 2
                      //       )),
                      //       child: Padding(
                      //         padding:   EdgeInsets.only(left: 16),
                      //         child: Row(
                      //           children: [
                      //             Text('Print Label',style: TextStyle(fontSize: 17,color: kblue),),
                      //             SizedBox(width: 9,),
                      //             Image.asset('asset/dropdwn.png'),
                      //
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Stack(
                            children:[
                              Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,


                                ),
                                child: InkWell(

                                  onTap: (){
                                    pickImage();
                                  },
                                  // onTap: ()async{
                                  //   final result = await  FilePicker.platform.pickFiles(
                                  //   allowMultiple: false,
                                  //   type: Filrtype.custom,
                                  //   allowedExtentions['png','jpg'],
                                  //   );
                                  //   },
                                  child: Icon(
                                    Icons.production_quantity_limits_outlined,
                                    size: 50,
                                    color:  Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 65,left: 120),
                                child: InkWell(

                                  onTap: (){
                                    pickImage1();
                                  },

                                  child: Icon(Icons.camera_alt_rounded,size: 50,color: Colors.grey[500],),
                                ),
                              ),
                            ],
                          ),SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Product name',style: TextStyle(fontSize: 16,color:kblue ),),

                              Divider(
                                height: 5,thickness: 15,
                              ),
                              Container(
                                height: 40,
                                width: 150,

                                child: TextFormField(
                                  controller: productname,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: bgGrey,

                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white)
                                      )

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Upload a product picture',style: TextStyle(color: kblue),),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Column(
                          children: [

                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Product type',style: TextStyle(fontSize: 18,color:kblue ),)),
                            Divider(
                              height: 5,thickness: 1,color: kblue,
                            ),
                            SizedBox(height: 4),
                            Container(
                              height: 37,

                              decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),

                              child: TextFormField(
                                controller: producttype,
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


                            SizedBox(height: 30),



                            Container(
                              height: 110,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Column(
                                      children: [
                                        Text('Sell Price',style: TextStyle(fontSize: 18,color:kblue ),),
                                        Divider(
                                          height: 5,thickness: 1,color: kblue,
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                          height: 40,

                                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),


                                          child: TextFormField(
                                            controller: sellprice,
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
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Flexible(
                                    child: Column(
                                      children: [
                                        Text("Cost Price",style: TextStyle(fontSize: 18,color:kblue ),),
                                        Divider(
                                          height: 5,thickness: 1,color: kblue,
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                          height: 40,
                                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),


                                          child: TextFormField(
                                              controller: costprice,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 1),
                            // Align(
                            //     alignment: Alignment.centerLeft,
                            //     child
                            //
                            //         : Text('Tags',style: TextStyle(fontSize: 18,color:kblue ),)),
                            // Divider(
                            //   height: 5,thickness: 1,color: kblue,
                            // ),
                            // Container(
                            //   height: 42,
                            //   width: 400,
                            //
                            //   child: TextFormField(
                            //     decoration: InputDecoration(
                            //         filled: true,
                            //         fillColor: bgGrey,
                            //
                            //         border: OutlineInputBorder(
                            //             borderSide: BorderSide(color: Colors.white)
                            //         ),
                            //         focusedBorder: OutlineInputBorder(
                            //             borderSide: BorderSide(color: Colors.white)
                            //         ),
                            //         enabledBorder:OutlineInputBorder(
                            //             borderSide: BorderSide(color: Colors.white)
                            //         )
                            //
                            //     ),
                            //   ),
                            // ),
                            Align(alignment: Alignment.centerLeft,
                                child: Text('Product category',style: TextStyle(fontSize: 18,color:kblue ),)),
                            SizedBox(height: 1),
                            Divider(
                              height: 5,thickness: 1,color: kblue,
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 60,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,borderRadius: new BorderRadius.circular(10.0),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              child: DropdownButton <String?>(
                                value:productcategoryvalue,
                                onChanged: (String? value){
                                  setState(() {
                                    productcategoryvalue = value!;
                                  });
                                },
                                items: itemList,
                              ),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //        DropdownButton <String?>(
                            //         value:productcategoryvalue,
                            //         onChanged: (String? value){
                            //           setState(() {
                            //             productcategoryvalue = value!;
                            //           });
                            //         },
                            //         items: itemList,
                            //       ),
                            //
                            //   ],
                            // ),
                            SizedBox(height: 20,),
                            Align(alignment: Alignment.centerLeft,
                                child: Text('Product Components',style: TextStyle(fontSize: 18,color:kblue ),)),
                            SizedBox(height: 1),
                            Divider(
                              height: 5,thickness: 1,color: kblue,
                            ),

                            InkWell(
                              onTap: (){



                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(
                                          builder: (context,
                                              setDialogState) {
                                            return AlertDialog(
                                              title:
                                              Text('Component List'),
                                              content: AddComponents(
                                                name: ProductModel().name,
                                                price: ProductModel().purchaseprice,
                                                quantity: ProductModel().quantity,
                                                type: 'edit',
                                                id: ProductModel().id,
                                                  _showMultiSelect(context);
                                                // selecteditems: newlist,
                                              ),
                                            );
                                          },
                                          );
                                    }
                                    );
                              },
                              child: Container(
                                color: kblue,

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Select Components',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(kblue)
                                    ),
                                    onPressed: (){
                                      Get.back();
                                    }, child: Text('Back')),
                                SizedBox(width: 25,),
                                
                                
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(kblue)
                                    ),
                                    onPressed: ()async{
                                      await firestore.collection('Product').add(
                                       {
                                         "costprice":  costprice.text,
                                         "productname": productname.text,
                                         "sellprice": sellprice.text,
                                         "producttype":producttype.text,
                                         "productcategory": productcategoryvalue,

                                       }
                                      ).then((value)  async
                                      {
                                        await firestore.collection('Product').doc(value.id).update(
                                            {'cid': value.id
                                            });
                                      }
                                      );
                                    }, child: Text('Add')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ),
        ),
        bottomNavigationBar: Container(

          height: 100,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(

                  child: Stack(
                    children: [
                      Align(

                        child: Container(
                          height: Get.height*0.08,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            color: Kdblue,

                          ),
                          child: Align(
                            alignment: Alignment.center,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRect(child: Image.asset('asset/share.png')),
                                ClipRect(child: Image.asset('asset/homedash.png')),
                                Opacity(
                                    opacity: 0.01,
                                    child: ClipRect(child: Image.asset('asset/share.png'))
                                ),
                                ClipRect(child: Image.asset('asset/groupdash.png')),
                                ClipRect(child: Image.asset('asset/pathdash.png')),

                              ],
                            ),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),

                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  EdgeInsets.only(bottom: 20.0),
                  child: Image.asset('asset/bnbAdd.png'),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
