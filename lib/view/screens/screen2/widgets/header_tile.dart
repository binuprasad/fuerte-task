import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

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
