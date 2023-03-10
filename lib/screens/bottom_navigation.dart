import 'package:flutter/material.dart';
import 'package:fuerte_task/screens/screen1/screen1.dart';
import 'package:fuerte_task/screens/screen2.dart';
import 'package:fuerte_task/utils/colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int pageIndex = 0;

  final pages = [
    const Screen1(),
    const Screen2(),
    const Screen1(),
    const Screen2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: pages[pageIndex],
      bottomNavigationBar: buildNavBar(context),
    );
  }

  Container buildNavBar(BuildContext context) {
    return Container(
      // height: 70,
      decoration: const BoxDecoration(
        color: Colors.white54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BottomNavigationContainer(),
                        Icon(
                          Icons.home,
                          color: AppColors().yellow,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(height: 7, width: 15),
                        Icon(
                          Icons.home,
                          color: AppColors().grey,
                        ),
                      ],
                    )),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BottomNavigationContainer(),
                      Icon(
                        Icons.description,
                        color: AppColors().yellow,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SizedBox(height: 7, width: 15),
                      Icon(
                        Icons.description,
                        color: AppColors().grey,
                      ),
                    ],
                  ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BottomNavigationContainer(),
                        Icon(
                          Icons.event,
                          color: AppColors().yellow,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(height: 7, width: 15),
                        Icon(
                          Icons.event,
                          color: AppColors().grey,
                        ),
                      ],
                    )),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BottomNavigationContainer(),
                      Icon(
                        Icons.settings,
                        color: AppColors().yellow,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SizedBox(height: 7, width: 15),
                      Icon(
                        Icons.settings,
                        color: AppColors().grey,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationContainer extends StatelessWidget {
  const BottomNavigationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 20,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}
