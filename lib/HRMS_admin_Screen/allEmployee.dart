import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revoo/HRMS_admin_Screen/addemployee.dart';
import 'package:collection/collection.dart';
import 'package:revoo/HRMS_admin_Screen/editEmployee.dart';

import '../constants/constants.dart';

class AllEmployeePage extends StatefulWidget {
  final DocumentSnapshot<Map<String, dynamic>> userDoc ;
  const AllEmployeePage({Key? key, required this.userDoc}) : super(key: key);

  @override
  _AllEmployeePageState createState() => _AllEmployeePageState();
}

class _AllEmployeePageState extends State<AllEmployeePage> {
  var selectedValue = 0;
  var selectedBranch ='';


  @override
  Widget build(BuildContext context) {

    List<TableRow> tableRow = [
       TableRow(
        children: [
          Container(
            height: 30,
            child: Center(child: Text(' ')),
          ),
          Container(
            height: 30,
            child: Center(
              child: Text(
                'Name',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 30,
            child: Center(
              child: Text(
                'Role',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 30,
            child: Center(
              child: AutoSizeText(
                'Department',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 30,
            child: Center(
              child: AutoSizeText(
                ' ',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),

    ];

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'All Employees',
                  style: TextStyle(color: kblue, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Image.asset('asset/filter.png'),
                  SizedBox(width: 10,),
                  Text(
                    'Filter by:',
                    style: TextStyle(color: kblue, fontSize: 14),
                  ),
                  SizedBox(width: 8,),
                  StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: FirebaseFirestore.instance.collection('Branch').where('cid',isEqualTo: widget.userDoc.get('cid')).snapshots(),
                    builder: (context, snapshot) {

                      if(!snapshot.hasData){
                        return kprogressbar;

                      }

                      var bDocs = snapshot.requireData.docs;

                      return
                        Container(
                        height: 30,
                        width: Get.width*0.35,
                        decoration: BoxDecoration(
                          color:bgGrey,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Padding(
                          padding:   EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButton(
                            underline: Text(''),
                            
                            borderRadius: BorderRadius.circular(10),
                            value: selectedValue,
                            onChanged: (int? value){



                              setState(() {
                                selectedValue = value!;
                                selectedBranch = bDocs[value].get('bid');
                              });
                              
                            },
                            items:
                            bDocs.mapIndexed((index, element) => (DropdownMenuItem(child: Text(element.get('branch_name')),value: index,))).toList()

                          ),
                        ),
                      );
                    }
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                      onTap: () {

                        Get.to(AddEmployee(userDoc : widget.userDoc));

                      },
                      child: Image.asset('asset/addnew.png')),
                ],
              ),
            ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream:
            selectedBranch != '' ?  FirebaseFirestore.instance.collection('Employee').where('bid',isEqualTo: selectedBranch).snapshots()
                : FirebaseFirestore.instance.collection('Employee').where('cid',isEqualTo: widget.userDoc.get('cid')).snapshots(),
          builder: (context, snapshot) {

              print(selectedBranch);

            if(!snapshot.hasData){
              return kprogressbar;
            }

            var  edoc = snapshot.requireData.docs;



            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: Get.width,
                child:
                Column(
                  children: [
                    Table(
                      border: TableBorder.symmetric(inside:BorderSide(color: Kdblue),outside:BorderSide(color: Colors.white)),
                      children: [
                        tableRow[0],

                      ]



                    ),
                    Table(
                        border: TableBorder.symmetric(inside:BorderSide(color: Kdblue),outside:BorderSide(color: Colors.white)),
                        children: edoc.map((e) {

                            return       TableRow(
                              children: [
                                Container(
                                  height: 60,
                                  child: CircleAvatar(
                                    child: Image.asset(
                                        'asset/livephoto.png'
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,



                                  child: Center(
                                    child: Text(
                                      e.get('name'),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                      e.get('designation'),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child: Center(
                                    child: AutoSizeText(
                                      e.get('designation'),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                      Get.to(EditEmployee(userDoc: widget.userDoc,
                                        name: e.get('name'),
                                        address: e.get('address'),
                                        designation:e.get('designation') ,
                                        email: e.get('email'),
                                        pwd: e.get('password'),
                                        number: e.get('phoneNumber'),
                                        alt_number: e.get('alternetphonenumber'),
                                        national_id:e.get('nationalIdnumber'),
                                        nominee_name:e.get('nominee_name'),
                                        role: e.get('selectRoles'),

                                        rel_with_nominee:e.get('nominee_relation'),
                                        nomniee_number: e.get('nominee_number'),
                                        shift: e.get('shiftid'),//
                                        gender: e.get('gender'),
                                        branchname: e.get('bid'),//
                                        managername: e.get('mid'),//
                                        hrname: e.get('hid'),//
                                        date: e.get('dob'),
                                        basic_pay: e.get('basic_pay'),
                                        house_allowance: e.get('house_rent_allowance'),
                                        medical_allowance:e.get('medical_allowance') ,
                                        conveyance: e.get('conveyance'),
                                        meal_coupon: e.get('meal_coupon'),
                                        travel_allowance:e.get('travel_allowance') ,
                                        gross_pay: e.get('gross_pay'),
                                        profession_tax: e.get('profession_tax'),

                                        gpf: e.get('general_provident_fund'),
                                        total_deduction: e.get('total_deductions'),
                                        net_pay: e.get('net_pay'),
                                        uid: e.get('uid'),

                                      ),fullscreenDialog: true);
                                  },
                                  child: Container(
                                    height: 60,
                                    child: Center(
                                      child: Icon(Icons.edit),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList()



                    ),
                  ],
                ),
              ),
            );
          }
        )
          ],
        ),
      ),
    );
  }
}
