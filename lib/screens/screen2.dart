import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
      title: Text('DOCTORS'),
      backgroundColor: Color.fromARGB(255, 45, 137, 174),
      leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.info), onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(0.0, 100.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Container(
          
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.07 ,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
                    
                      ),
            ),),
        ),
      ),
    ),
    );
  }
}