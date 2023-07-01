
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({Key? key}): super(key:key);
  
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>{

     

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         _totalM(),
         _indicators(),
         _buttonReg(),
        ],
      ),
      
    );
  }

  Widget _totalM(){
      return Column(
        children: [
          Text(
                '0 mL',
                style:Theme.of(context).textTheme.headlineSmall,
                ),
          Text(
                  'Faltan 250 mL',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
        ],
      );

  }
  Widget _indicators(){
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '0 %',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  '1.0',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
    
              ],
            );
  }
  Widget _buttonReg(){
    return Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                 
                ),
                onPressed:() { },
                child: const Text('Registrar'),
                 ),
            );
  }
}
