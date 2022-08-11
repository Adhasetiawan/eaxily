import 'package:eaxily/features/login/controller_login.dart';
import 'package:eaxily/page/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PageLogin extends GetView<ControllerLogin>{
  const PageLogin({Key? key}) : super(key: key);

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
              child: Form(
                key: controller.formkeyLogin,
                child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 150, 40, 0),
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
                              'Sign In',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/letter_icon.png',
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: TextFormField(
                            controller: controller.edtUsername,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                hintText: 'Username',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: Icon(CupertinoIcons.person, color: Colors.grey.shade400,)
                            ),
                            validator: (value) {
                              if (value == null || value == '') {
                                return 'Username Incorrect';
                              } else {
                                return null;
                              }
                            },

                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: TextFormField(
                            controller: controller.edtPassword,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey.shade400,)
                            ),
                            validator: (value) {
                              if (value == null || value == '' || value.length < 6) {
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
                                  value: controller.autoSignin.value,
                                  onChanged: (value)=>
                                  controller.autoSignin.value == false
                                      ? controller.autoSignin(true)
                                      : controller.autoSignin(false)
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade500
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: (){},
                                  child: const Text(
                                    'Forgot Password',
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
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                            child: const Text('Log In', style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Or login with',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){},
                                child: Card(
                                  elevation: 4,
                                  color: const Color(0xff33457E),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                    child: Image.asset(
                                      'assets/images/facebook.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Card(
                                  elevation: 4,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                    child: Image.asset(
                                      'assets/images/google.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Card(
                                  elevation: 4,
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                    child: Image.asset(
                                      'assets/images/apple.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                              const TextSpan(text: "Don't have an account? "),
                              TextSpan(
                                  text: ' Sign up',
                                  style: const TextStyle(
                                      color: Color(0xff0789FE)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = ()=> Get.toNamed(Routes.register)
                              )
                            ]
                        )
                    ),
                  ),
                ],
            ),
              )))
        ],
      ),
    );
  }
}