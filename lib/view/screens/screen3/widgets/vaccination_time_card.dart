import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/utils/mediaquery.dart';
import 'package:fuerte_task/utils/network_images.dart';

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


