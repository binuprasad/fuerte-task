
import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../controller/auth_controller.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verification(context);
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            backgroundColor:AppColors().blueGrey,
          ),
        ),
      ),
    );
  }
}
