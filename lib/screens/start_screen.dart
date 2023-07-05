
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
    return IntrinsicHeight( //elementos verticales
      child:
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _percentage(),
                  const SizedBox(
                    width: 10,
                  ),
                  _smallDivider(),
                  const SizedBox(
                    width: 10,
                  ),
                  _hydration(),
                ],
              ),
    );
  }

  Widget _percentage(){
    return Column(
      children: [
          SizedBox(
            height:60,
            width: 40,
            child: Stack(
              alignment: Alignment.center,
            children:[
            const SizedBox(
              width: 45,
              height: 45,
                child: CircularProgressIndicator(
                strokeWidth: 6,
                value: 0.3,
                color: Color.fromARGB(255, 62, 139, 236),
                backgroundColor: Color.fromARGB(255, 17, 50, 74),
              ),
            ),
          Text(
                    '100 %',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
              ],
        ),
        ),
      Text(
        'Hoy',
        style: Theme.of(context).textTheme.bodySmall,
      ),
       ],
    );

  }
  Widget _smallDivider(){
    return const VerticalDivider(
        color: Color.fromARGB(255, 51, 51, 51),
        thickness: 2,
        width: 20,
        indent: 10,
        endIndent: 0,
    );

  }

  Widget _hydration(){
    return Column(
      children: [
        _intervalBar(),
        Text(
          'Hidratación',
          style:Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
  Widget _intervalBar(){
    return Text(
                  '1.0',
                  style: Theme.of(context).textTheme.headlineSmall,
                );
  }
  Widget _buttonReg(){
    return Center(
              child: ElevatedButton(
                onPressed:() { },
                child: const Text('Registrar'),
                 ),
            );
  }
}
