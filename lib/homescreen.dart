import 'package:digitalwallet/gridicons.dart';
import 'package:digitalwallet/navbar/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:qrscan/qrscan.dart' as scanner;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Obtain the screen size
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: const Color.fromARGB(255, 41, 40, 40),
            // decoration: const BoxDecoration(
            //   color: Colors.grey,
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(40),
            //     bottomRight: Radius.circular(40),
            //   ),
            // ),

            // minimum: EdgeInsets.all(12),

            //color: Colors.grey,
            height: screenSize.height,
            width: screenSize.width,

            child: Stack(
              children: [
                // const BottomNavBar(),
                Container(
                  height: screenSize.height * 0.17,
                  width: screenSize.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 65, 64, 64),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.03,
                      vertical: screenSize.height * 0.01),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: screenSize.height * 0.02,
                      horizontal: screenSize.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.search,
                        size: 34,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.notifications,
                          size: 34,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.menu,
                          size: 34,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height * 0.08,
                      left: screenSize.width * 0.04,
                      right: screenSize.width * 0.03),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        )),
                    height: screenSize.height * 0.06,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.03,
                              vertical: screenSize.height * 0.01),
                          child: const Icon(Icons.wallet,
                              color: Color.fromARGB(255, 13, 173, 21),
                              size: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.001,
                              vertical: screenSize.height * 0.01),
                          child: Column(
                            children: const [
                              Text(
                                "NPR 2000",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Balance",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenSize.width * 0.19,
                              right: screenSize.width * 0.15),
                          child: const Icon(Icons.remove_red_eye,
                              color: Color.fromARGB(255, 13, 173, 21),
                              size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Column(
                            children: const [
                              Text(
                                "45.10",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Reward Points",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.wallet_membership_rounded,
                            color: Color.fromARGB(255, 13, 173, 21), size: 20),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height * 0.14,
                      left: screenSize.width * 0.04,
                      right: screenSize.width * 0.03),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 65, 64, 64),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22),
                        )),
                    height: screenSize.height * 0.08,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.02,
                          vertical: screenSize.height * 0.014),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.get_app_outlined,
                                  color: Color.fromARGB(255, 13, 173, 21),
                                  size: 32),
                              Text(
                                "Load Money",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.keyboard_double_arrow_up_sharp,
                                  color: Color.fromARGB(255, 13, 173, 21),
                                  size: 32),
                              Text(
                                "Send Money",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.apartment,
                                  color: Color.fromARGB(255, 13, 173, 21),
                                  size: 32),
                              Text(
                                "Bank Transfer",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.air_rounded,
                                  color: Color.fromARGB(255, 13, 173, 21),
                                  size: 32),
                              Text(
                                "Remittance",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(top: 210.0, left: 15, right: 15),
                  child: Stack(
                    // height: screenSize.height * 0.67,
                    // width: screenSize.width,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 65, 64, 64),
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(22),
                    //     topRight: Radius.circular(22),
                    //     bottomLeft: Radius.circular(22),
                    //     bottomRight: Radius.circular(22),
                    //   ),
                    // ),

                    // IconGridPage(),

                    children: [
                      IconGridPage(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenSize.height * 0.61,
                            left: screenSize.width * 0.33),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 13, 173, 21),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "View less",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                // ElevatedButton(onPressed: () {}, child: const Text("View less"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
