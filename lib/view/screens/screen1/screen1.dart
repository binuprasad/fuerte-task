import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/utils/mediaquery.dart';
import 'package:fuerte_task/view/screens/screen1/widgets/payment_button_widget.dart';
import 'package:fuerte_task/view/screens/screen1/widgets/promocode_button_widget.dart';
import 'package:fuerte_task/view/screens/screen1/widgets/table_widget.dart';
import '../screen2/widgets/doctor_details_tile_widget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  get selectedRadio => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors().blueGrey,
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
        title: const Text("APPOINTMENTS"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey[200],
              thickness: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: DoctorDetails(),
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total cost",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppColors().purple,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$80",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors().purple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "session fee for 30 minutes",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        "To pay",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors().purple,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$80",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors().purple,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 5,
            ),
            const PromocodeButton(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "PAYMENT OPTIONS",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: AppColors().purple,
                ),
              ),
            ),
            TableWidget(selectedRadio: selectedRadio),
            const SizedBox(
              height: 60,
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentButton(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  onRadioChanged(Object? value) {}
}
