import 'package:flutter/material.dart';

class IconGridPage extends StatelessWidget {
  final List<String> iconTitles = [
    'Topup',
    'Electricity',
    'Khanepani',
    'eSewa Care',
    'Request Money',
    'Internet',
    'AIrlines',
    'International Airlines',
    'Hotel',
    'Govt.Payment',
    'Cabel Car',
    'Sahakari Deposit',
    'TV',
    'Education Fee',
    'Insurance',
    'Financial Services',
    'Health',
    'Bus Ticket',
    'Movies',
    'Voting & Events',
    'Online Payment',
    'Antivirus',
    'Com. Electricity',
  ];

  final List<IconData> iconimage = [
    Icons.mobile_screen_share_rounded,
    Icons.lightbulb,
    Icons.water_drop_rounded,
    Icons.health_and_safety_sharp,
    Icons.request_page,
    Icons.cell_wifi_sharp,
    Icons.flight,
    Icons.airplane_ticket_outlined,
    Icons.home_work_outlined,
    Icons.assured_workload_rounded,
    Icons.rocket_sharp,
    Icons.savings_outlined,
    Icons.tv,
    Icons.cast_for_education,
    Icons.receipt_rounded,
    Icons.wallet_giftcard_outlined,
    Icons.health_and_safety,
    Icons.bus_alert,
    Icons.local_movies,
    Icons.how_to_vote_outlined,
    Icons.payments_sharp,
    Icons.shield_outlined,
    Icons.electric_meter_sharp,
  ];

  IconGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.67,
      width: screenSize.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 65, 64, 64),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: iconTitles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Adjust the number of columns here
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Handle the icon click event here
              // Redirect to the respective page
              // You can use Navigator to navigate to the new page
              // For simplicity, let's just print the title to the console
              // print('Clicked: ${iconTitles[index]}');

              if (iconTitles[index] == 'Icon 1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 2') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 3') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 4') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 5') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 6') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 7') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 8') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 9') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else if (iconTitles[index] == 'Icon 10') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.image),
                Icon(
                  iconimage[index],
                  size: 28,
                  color: const Color.fromARGB(255, 13, 173, 21),
                ),
                const SizedBox(height: 8),
                Text(iconTitles[index],
                    style: const TextStyle(color: Colors.white, fontSize: 13)),
              ],
            ),
          );
        },
      ),
    );

    // extendBody:
  }
}
