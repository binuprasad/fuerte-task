import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';
import 'package:fuerte_task/view/auth/widgets/auth_utils.dart';
import 'package:fuerte_task/view/auth/widgets/custom_button.dart';
import 'package:provider/provider.dart';
import '../../controller/auth_controller.dart';

class UserInfromationScreen extends StatefulWidget {
  const UserInfromationScreen({super.key});

  @override
  State<UserInfromationScreen> createState() => _UserInfromationScreenState();
}

class _UserInfromationScreenState extends State<UserInfromationScreen> {
  @override
  void dispose() {
    final authController = Provider.of<AuthProvider>(context, listen: false);

    super.dispose();
    authController.nameController.dispose();
    authController.emailController.dispose();
    authController.bioController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: SafeArea(
        child: isLoading == true
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors().blueGrey,
                ),
              )
            : SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
                child: Center(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => authProvider.selectImage(context),
                        child: authProvider.image == null
                            ? CircleAvatar(
                                backgroundColor: AppColors().blueGrey,
                                radius: 50,
                                child: const Icon(
                                  Icons.account_circle,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              )
                            : CircleAvatar(
                                backgroundImage: FileImage(authProvider.image!),
                                radius: 50,
                              ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            textFeld(
                              hintText: "name",
                              icon: Icons.account_circle,
                              inputType: TextInputType.name,
                              maxLines: 1,
                              controller: authProvider.nameController,
                            ),
                            textFeld(
                              hintText: "email",
                              icon: Icons.email,
                              inputType: TextInputType.emailAddress,
                              maxLines: 1,
                              controller: authProvider.emailController,
                            ),
                            textFeld(
                              hintText: "Enter your bio here...",
                              icon: Icons.edit,
                              inputType: TextInputType.name,
                              maxLines: 2,
                              controller: authProvider.bioController,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: CustomButton(
                          text: "Continue",
                          onPressed: () => authProvider.storeData(context),
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
