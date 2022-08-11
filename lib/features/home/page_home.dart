import 'package:eaxily/features/home/controller_home.dart';
import 'package:eaxily/features/main/all_service/page_allservice.dart';
import 'package:eaxily/page/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PageHome extends GetView<ControllerHome>{
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.text_alignleft)),
          actions: [IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell))],
          flexibleSpace: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/header_one.png',
                fit: BoxFit.cover,
                width: Get.width,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                                child: const Text(
                                  'Good Morning',
                                  style: TextStyle(color: Colors.white70),
                                )
                            ),
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                                child: const Text(
                                  'Aliana James',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.fromLTRB(0, 100, 20, 0),
                            child: Image.asset('assets/images/person_female.png')
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Something',
                            prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey.shade400,),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          await Future.delayed(Duration(seconds: 3));
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      const Text(
                        'Popular Service',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff121212),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(top: 5, right: 20),
                        child: TextButton(onPressed: ()=> Get.to(PageAllService()), child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0789FE),
                          ),
                        )),
                      ),
                    ],
                  )
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: ()=> Get.toNamed(Routes.sub_kategori),
                          child: Container(
                            margin: const EdgeInsets.only(left: 5, right: 10),
                            width: 140,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 5,
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Center(
                                  child: Image.asset(
                                    'assets/icons/reparir_cleaning.png',
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Center(
                                  child: Text(
                                    'Repair & Cleaning',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            margin: const EdgeInsets.only(left: 5, right: 10),
                            width: 140,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 5,
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Center(
                                  child: Image.asset(
                                    'assets/icons/education.png',
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Center(
                                  child: Text(
                                    'Education',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            margin: const EdgeInsets.only(left: 5, right: 10),
                            width: 140,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 5,
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Center(
                                  child: Image.asset(
                                    'assets/icons/marketing.png',
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Center(
                                  child: Text(
                                    'Marketing',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 30),
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: const Text(
                        'Need Custom Service?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff121212),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                      child: const Text(
                        'Didn’t find what you want in the given mentined categories? Feel free to reach out us by sending custom service. We’ll reach you out',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 25),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff03BCFA),
                                Color(0xff5FDC49),
                              ]
                          )
                      ),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(Get.width, Get.height * .06,),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('Eaxilier', style: TextStyle(fontSize: 16),),
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
}