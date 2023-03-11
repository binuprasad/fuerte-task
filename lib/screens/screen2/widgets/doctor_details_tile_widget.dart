import 'package:flutter/material.dart';

import '../../../utils/network_images.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(profilePic),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Gregoy House",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromARGB(255, 36, 5, 42),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "Nephrologist",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue[100],
                    child: const Icon(
                      Icons.shop,
                      size: 13,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "3 years",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.red[100],
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 13,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "95 %",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
