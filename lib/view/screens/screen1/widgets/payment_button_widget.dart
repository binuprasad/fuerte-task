import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/mediaquery.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
          backgroundColor: Colors.orange,
          padding:  EdgeInsets.symmetric(
              horizontal:CustomMediaquery().height(context)*0.15, vertical: 16),
          textStyle: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold),
        ),
        child: const Text('Pay & Confirm'),
      ),
    );
  }
}
