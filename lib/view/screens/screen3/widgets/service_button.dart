import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/utils/mediaquery.dart';

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