import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';

class PromocodeButton extends StatelessWidget {
  const PromocodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[50], borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.percent_sharp,
              ),
            ),
            Text(
              "Use Promo Code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColors().purple,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right_sharp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
