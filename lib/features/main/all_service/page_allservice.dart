import 'package:flutter/material.dart';

class PageAllService extends StatelessWidget {
  const PageAllService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff363636),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text('All Services'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
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
                    Container(
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
                  ],
                )
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
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
                              'assets/icons/art.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'Art & Entertainment',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                              'assets/icons/sapce_design.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'Space Design',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
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
                              'assets/icons/business.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'Business & Cryptos',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                              'assets/icons/legal_advice.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'Legal Advice',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
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
                              'assets/icons/medicine.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'Medicine',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                              'assets/icons/education_second.png',
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
                  ],
                )
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
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
                              'assets/icons/it.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Text(
                              'IT & Tech',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
