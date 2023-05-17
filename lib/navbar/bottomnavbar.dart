import 'package:digitalwallet/homescreen.dart';
import 'package:digitalwallet/pages/payment.dart';
import 'package:digitalwallet/pages/statements.dart';
import 'package:digitalwallet/pages/support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  String result = "Hello World...!";
  Future _scanQr() async {
    try {
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result =
            cameraScanResult!; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 13, 173, 21),
        onPressed: () {
          _scanQr();
        },
        label: const Text('Scan'),
        icon: const Icon(
          Icons.qr_code_scanner,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        child: Container(
          color: const Color.fromARGB(255, 65, 64, 64),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 13, 173, 21),
                          size: 30,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Statement();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.pallet,
                          color: Color.fromARGB(255, 13, 173, 21),
                          size: 30,
                        ),
                        Text(
                          "Statement",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // MaterialButton(
                  //   minWidth: 30,
                  //   onPressed: () {
                  //     setState(() {
                  //       currentScreen = const Statement();
                  //       currentTab = 2;
                  //     });
                  //   },
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Text(
                  //         "Scan & pay",
                  //         style: TextStyle(fontSize: 13, color: Colors.white),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenSize.height * 0.042,
                        left: screenSize.width * 0.013),
                    child: const Text(
                      "Scan & Pay",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ],
              ),

              //rightside nav bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Payment();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.payment_sharp,
                          color: Color.fromARGB(255, 13, 173, 21),
                          size: 30,
                        ),
                        Text(
                          "My Payment",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: MaterialButton(
                      minWidth: 0,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Support();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.help,
                            color: Color.fromARGB(255, 13, 173, 21),
                            size: 30,
                          ),
                          Text(
                            "Support",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// for qr scanner
