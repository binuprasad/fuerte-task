import 'package:flutter/material.dart';
import 'package:fuerte_task/screens/screen2/widgets/header_tile.dart';
import 'package:fuerte_task/screens/screen3/date_picker.dart';
import 'package:fuerte_task/screens/screen3/widgets/head_tile.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/utils/network_images.dart';

import '../../utils/mediaquery.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});
  List icons = [coronaIcon, doctorIcon, hospitalIcon, medicinesIcon];
  List btntxt = ['Covid-19', 'Doctors', 'Hospitals', 'Medicines'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 45, 137, 174),
        title: RichText(
          text: TextSpan(
            text: '👋Hello, \n',
            style: const TextStyle(color: Color.fromARGB(255, 228, 236, 235)),
            children: <TextSpan>[
              TextSpan(
                  text: 'Grogory House',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors().white)),
            ],
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(profilePic),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(0.0, 100.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
      body: SingleChildScrollView(
        child: Column(
           
          children: [
            Column(
              children: [
                Container(
                    color: AppColors().blueGrey,
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Date(),
                    )),
                const Header(leadingTxt: 'SERVICES'),
                SizedBox(
                  height: CustomMediaquery().height(context) * 0.12,
                  width: CustomMediaquery().width(context),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ServiceButtons(
                          btntxt: btntxt[index],
                          icons: icons[index],
                        ),
                      );
                    },
                  ),
                ),Divider(
              thickness: 15,
            ),
            HeaderTile(),
            ListView.builder(itemCount: 4,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return VaccinationTimeCard();
              },
            ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class VaccinationTimeCard extends StatelessWidget {
  const VaccinationTimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomMediaquery().height(context) * 0.17,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Symptoms of Covid to watch out\nfor',
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors().black,
                      fontSize: 17),
                ),
                SizedBox(
                  height: CustomMediaquery().height(context) * 0.01,
                ),
                Text(
                  'March 06,09.01PM',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: AppColors().grey400),
                )
              ],
            ),
            Container(
              height: CustomMediaquery().height(context) * 0.2,
              width: CustomMediaquery().height(context) * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(vaccination), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}

class ServiceButtons extends StatelessWidget {
  const ServiceButtons({
    super.key,
    required this.icons,
    required this.btntxt,
  });
  final String icons;
  final String btntxt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors().blueGrey.withOpacity(0.4),
          child: CircleAvatar(
            radius: 23,
            backgroundColor: const Color.fromARGB(255, 18, 124, 154),
            child: ImageIcon(
              NetworkImage(
                icons,
              ),
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: CustomMediaquery().height(context) * 0.01,
        ),
        Text(
          btntxt,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: AppColors().grey500),
        )
      ],
    );
  }
}
