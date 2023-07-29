import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget{
  const DrinksScreen({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 16.0,
        leadingWidth: 100,
        leading: Text(
           'Cancelar',
           style: Theme.of(context).textTheme.bodySmall,
           ),
           actions: [
            _hour(context),
           ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _oneCard(context),
          _oneCard(context),
          _oneCard(context),
          _oneCard(context),
          
        ],
        
        ),
    );
  }
  Widget _oneCard(BuildContext contex){
    return GestureDetector(
      onTap: (){
        Navigator.pop(contex);
      },
   child: //SizedBox(
             //width: 50.0,
            // height: 500.0,
             //child: 
             Card(
               elevation: 10.0,
               color: const Color.fromARGB(255, 22, 45, 67),
               shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 22, 45, 67),
                  ),
                  borderRadius: BorderRadius.circular(20.0), 
               ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '250 ml',
                      style: Theme.of(contex).textTheme.bodyMedium,
                    ),
                    Text(
                      'Un vaso de agua',
                      style: Theme.of(contex).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
               ),
             ),
             );
  }
}
    Widget _hour(BuildContext context){
    //DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(DateTime.now());
    return Text(
      formattedTime,
      style: Theme.of(context).textTheme.bodySmall,
    );

  }

  
