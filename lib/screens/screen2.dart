import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/network_images.dart';

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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
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
            ),
          )
        ],
      ),
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 37,
                backgroundImage: NetworkImage(profilePic),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Gregoy House",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color.fromARGB(255, 36, 5, 42),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Nephrologist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue[100],
                        child: const Icon(
                          Icons.shop,
                          size: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "3 years",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey[400],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red[100],
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "95 %",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Total Fee',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$80',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.orange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                child: const Text('Make an appointment'),
              ),
            ],
          ),
        )
      ],
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
