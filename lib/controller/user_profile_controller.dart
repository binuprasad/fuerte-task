import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'auth_controller.dart';

class ProfileController extends ChangeNotifier {

  // -----------navigate to phone
 void navEmail(BuildContext context) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    var url = Uri.parse("mailto:${authProvider.userModel.email}");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
//-----------navigate to email
  void navPhone(BuildContext context) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    final Uri launchUri = Uri(
      scheme: 'phone',
      path: authProvider.userModel.phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
