import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/network_images.dart';

import '../../../../utils/colors.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key, });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'DAILY REPORTS',
            style: TextStyle(
                color: AppColors().black,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
         IconButton(onPressed: (){}, icon: ImageIcon(NetworkImage(moreVert)))
        ],
      ),
    );
  }
}
