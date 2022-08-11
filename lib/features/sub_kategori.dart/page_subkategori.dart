import 'dart:developer';

import 'package:eaxily/features/sub_kategori.dart/controller_subkategori.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PageSubkategori extends GetView<ControllerSubKategori>{
  const PageSubkategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff363636),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text('Repair & Cleaning'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          await Future.delayed(const Duration(seconds: 3));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Something',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: const Icon(CupertinoIcons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                    )
                ),
              ),
            ),
            SizedBox(
              height: 25,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index)=>
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [Color(0xff03BCFA), Color(0xff5FDC49)])
                          ),
                          child: Text('All', style: TextStyle(fontSize: 12, color: Colors.white),),
                        )
                )
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index)=>
                        Container(
                          width: Get.width,
                          height: 120,
                          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 10
                              )
                            ]
                        ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Image.asset('assets/icons/education_second.png', height: 80, width: 80,),
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                width: Get.width * .6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(top: 20, bottom: 5),
                                        child: const Text(
                                            'Sample',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            )
                                        )
                                    ),
                                    const Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                        style: TextStyle(fontSize: 16)
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                )
            ),
          ],
        ),
      ),
    );
  }
}