import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  ShowResult({this.calBMI, this.showResult, this.showDes});
  final String calBMI;
  final String showResult;
  final String showDes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(
                        'YOUR BMI',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                  child: Card(
                    elevation: 10,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          calBMI,
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(
                        showResult,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(
                        showDes,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Re-Calculate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
