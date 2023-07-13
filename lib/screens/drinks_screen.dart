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
      child: const SizedBox(
        height: 100.0,
        child:  Card(
          elevation: 10.0,
          color: Colors.cyan,
          child: Text(
            'Esta es una tarjeta'
          ),
        ),
      ),
    );
  }
  Widget _hour(BuildContext context){
    String formattedTime = DateFormat.Hm().format(DateTime.now());
    return Text(
      formattedTime,
      style: Theme.of(context).textTheme.bodySmall,
    );

  }
}