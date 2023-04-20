import 'dart:ffi';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning, abenkoula71!',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Ready to workout ?',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://github.com/abenkoula71/day26/blob/main/image-removebg-preview.png?raw=true')),
                    color: Color.fromARGB(148, 238, 185, 69),
                    borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        4,
                        (index) => Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(68, 255, 153, 0),
                                  borderRadius: BorderRadius.circular(35)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0x64FF9900),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.5,
                                  ),
                                  Text(
                                    'Heart Rate',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  SizedBox(
                                    height: 7.5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '78 ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        'BPM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Workout Programs',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 110,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(62, 255, 193, 7),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'All type',
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ...List.generate(
                        3,
                        (index) => Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 110,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(30, 255, 193, 7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Full body',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color.fromARGB(41, 68, 137, 255)),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coach:',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Text(
                            'Stetch',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12pm - 20pm',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 260,
                      child: Image(
                        image: NetworkImage(
                            'https://github.com/abenkoula71/day26/blob/main/image-removebg-preview.png?raw=true'),
                        // fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color.fromARGB(41, 243, 167, 55)),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coach:',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Text(
                            'Stetch',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12pm - 20pm',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 260,
                      child: Image(
                        image: NetworkImage(
                            'https://github.com/abenkoula71/day26/blob/main/image-removebg-preview.png?raw=true'),
                        // fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
