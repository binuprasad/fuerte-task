import 'package:flutter/material.dart';
import 'package:fuerte_task/utils/colors.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.selectedRadio,
  });

  final  selectedRadio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius:
              const BorderRadius.all(Radius.circular(10)),
        ),
        child: Table(
          border: TableBorder.symmetric(
            inside: const BorderSide(width: 1),
          ),
          children: [
            TableRow(
              children: [
                SizedBox(
                  height: 50,
                  child: RadioListTile(
                    title: Text("Pay pal",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors().purple,
                        )),
                    value: "",
                    groupValue: selectedRadio,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            TableRow(children: [
              SizedBox(
                height: 50,
                child: RadioListTile(
                  title: Text(
                    "Credit Card",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors().purple,
                    ),
                  ),
                  value: "",
                  groupValue: selectedRadio,
                  onChanged: (value) {},
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}


