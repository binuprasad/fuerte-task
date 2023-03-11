import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/network_images.dart';
import 'widgets/card_body_widget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOCTORS'),
        backgroundColor: const Color.fromARGB(255, 45, 137, 174),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.info), onPressed: () {}),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(0.0, 100.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Column(
            children: [
              Divider(
                thickness: 10,
                color: Colors.grey[200],
              ),
            ],
          ),
          const Header(
            leadingTxt: "DOCTORS NEARBY",
          ),
          const CardBody(),
          Divider(
            thickness: 10,
            color: Colors.grey[200],
          ),
          const Header(
            leadingTxt: 'RECOMMENDED',
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return const CardBody();
            },
            itemCount: 7,
            separatorBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              );
            },
          )
        ],
      ),
    );
  }
}




class Header extends StatelessWidget {
  const Header({super.key, required this.leadingTxt});
  final String leadingTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingTxt,
            style: TextStyle(
                color: AppColors().blueGrey,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: TextStyle(color: AppColors().yellow),
            ),
          ),
        ],
      ),
    );
  }
}
