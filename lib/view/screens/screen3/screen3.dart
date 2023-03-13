import 'package:flutter/material.dart';
import 'package:fuerte_task/view/screens/screen2/widgets/header_tile.dart';
import 'package:fuerte_task/view/screens/screen3/widgets/date_picker.dart';
import 'package:fuerte_task/view/screens/screen3/widgets/head_tile.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/utils/network_images.dart';
import 'package:fuerte_task/view/screens/screen3/widgets/service_button.dart';
import 'package:fuerte_task/view/screens/screen3/widgets/vaccination_time_card.dart';

import '../../../utils/mediaquery.dart';

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
      body: Column(
         
        children: [
          Column(
            children: [
              Container(
                  color: AppColors().blueGrey,
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Date(),
                  ),),
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
              ),const Divider(
            thickness: 15,
          ),
          const HeaderTile(),
          SizedBox(
            height:CustomMediaquery().height(context)*0.265,
            child: ListView.builder(itemCount: 4,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const VaccinationTimeCard();
              },
            ),
          ),
            ],
          ),
          
        ],
      ),
    );
  }
}

