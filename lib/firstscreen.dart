import 'package:flutter/material.dart';
import 'package:wechat/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/firstscreen_1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Expanded(
                  flex: 60,
                  child: Container(),
                ),
                Expanded(
                  flex: 40,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Let's connect\nwith each other",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "A message is a discrete communication\nintended by  the source consumption.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 251, 85, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Let's Start",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(Icons.arrow_forward_rounded),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
