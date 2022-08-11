import 'package:eaxily/features/register/controller_regis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../page/app_routes.dart';

class PageRegis extends GetView<ControllerRegis>{
  const PageRegis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
              'assets/images/header_one.png'
          ),
          Obx(() => SingleChildScrollView(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: ()=> Get.back(),
                  child: Container(
                    margin: EdgeInsets.only(top: 50, left: 20),
                    alignment: Alignment.centerLeft,
                    child: Icon(CupertinoIcons.left_chevron, size: 30, color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 65, 40, 0),
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 50,
                            offset: const Offset(0, 30)
                        )
                      ]
                  ),
                  child: Form(
                    key: controller.formkeyRegis,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 25, bottom: 10),
                          child: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (rect)=> const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xff03BCFA), Color(0xff5FDC49)]
                            ).createShader(rect),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: const Text(
                            'Discover your social & Try to Sign in',
                            style: TextStyle(
                                fontSize: 14
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: TextFormField(
                            controller: controller.edtFullname,
                            decoration: InputDecoration(
                              hintText: 'Full name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              prefixIcon: Icon(CupertinoIcons.person, color: Colors.grey.shade400,),
                            ),
                            validator: (value) {
                              if (value == null || value == '') {
                                return 'Name is empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: TextFormField(
                            controller: controller.edtEmail,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: Icon(Icons.email_outlined, color: Colors.grey.shade400,)
                            ),
                            validator: (value) {
                              if (value == null || value == '') {
                                return 'Email incorrect';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: TextFormField(
                            obscureText: true,
                            controller: controller.edtPassword,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey.shade400,)
                            ),
                            validator: (value) {
                              if (value == null || value == '' || value.length <= 8) {
                                return 'Password incorrect';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: TextFormField(
                            obscureText: true,
                            controller: controller.edtRetypepass,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                hintText: 'Re-type Password',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey.shade400,)
                            ),
                            validator: (value) {
                              if (value == null || value == '' || value.length <= 8) {
                                return 'Password incorrect';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                  value: controller.termService.value,
                                  onChanged: (value)=>
                                  controller.termService.value == false
                                      ? controller.termService(true)
                                      : controller.termService(false)
                              ),
                              TextButton(
                                  onPressed: (){},
                                  child: const Text(
                                    'Accept Term of Service',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff0889FE)
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
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
                            onPressed: ()=> controller.validator(),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(Get.width, Get.height * .05,),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: const Text('Sign Up', style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: "Already have an account? "),
                            TextSpan(
                                text: ' Login',
                                style: const TextStyle(
                                    color: Color(0xff0789FE)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = ()=> Get.back()
                            )
                          ]
                      )
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}