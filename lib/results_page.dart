import 'package:bmi_calculater/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'calculater_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResults,@required this.results,@required this.interpretation});


  final String bmiResults;
  final String results;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: kLittleTextStyle,),

            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(results.toUpperCase(),style: kResultextStyle,),
                  Text(bmiResults,style: kBMITextStyle),
                  Text(interpretation,style:kBodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            )
          ),
          BottonButton(text: 'RE CALCULATE', onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
