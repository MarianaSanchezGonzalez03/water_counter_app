import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        _label(),
      ],
    );
  }
  Widget _bar(){
    return Column(
      children: [
        
        _interval(customColor: Color.fromARGB(255, 17, 84, 243)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 6, 170, 199)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 4, 165, 114)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 2, 175, 60)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 52, 234, 6)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 200, 238, 10)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 206, 199, 7)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 245, 182, 11)),
        _separetor(),
        _interval(customColor: Color.fromARGB(255, 246, 102, 13)),
        _separetor(),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        
       

      ],
    );
  }
  Widget _separetor(){
    return const SizedBox(
      height: 3,
    );
  }
  Widget _interval({required Color customColor}){
    return  SizedBox(
      width: 22.0,
      height: 5.0,
      child: DecoratedBox(
        decoration:BoxDecoration(
          color: customColor,
      )
      ),
    );
  }
  Widget _label(){
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
