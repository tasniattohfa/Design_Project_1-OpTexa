import 'package:flutter/material.dart';
import 'package:object_detection/HomePage.dart';

class ObjectDetectedScreen extends StatefulWidget {
  @override
  _ObjectDetectedScreenState createState() => _ObjectDetectedScreenState();
}

class _ObjectDetectedScreenState extends State<ObjectDetectedScreen> {
  void _showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      isDismissible: false,
      // Set to false to prevent closing by tapping outside

      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.9,
          minChildSize: 0.3,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    // Move the margin to the outer container
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      // Adjust the radius as needed
                      child: Container(
                        color: Colors.black26,
                        width: 62,
                        height: 4,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                          // Add right, left, top, and bottom padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              height: 100, // Set your desired height
                              //margin: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
                                    // Apply margin to the outer container
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      // Adjust the radius as needed
                                      child: Container(
                                        color: Color(0xff005aee),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 10, 4),
                                        child: const Text(
                                          'Detected Objects',
                                          style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 1.26,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Add other content as needed
                                ],
                              ),
                            ),
                          ),
                        ),
                        ExpansionTile(
                          title: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: Text(
                                  'Bottle',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Image.asset(
                                  'images/speaker.png',
                                  //color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          children: [
                            Container(
                              color: Colors.white,
                              height: 100,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.fromLTRB(24, 6, 24, 4),
                              child: const Text(
                                'A bottle is a container typically made of glass, plastic, or other materials, designed to hold and store liquids or substances.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: Text(
                                  'Hand',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Image.asset(
                                  'images/speaker.png',
                                  //color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          children: [
                            Container(
                              color: Colors.white,
                              height: 100,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.fromLTRB(24, 6, 24, 4),
                              child: const Text(
                                'A bottle is a container typically made of glass, plastic, or other materials, designed to hold and store liquids or substances.',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005aee),
        elevation: 0,
        title: const Text(
          'Go Back',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.26,
            color: Colors.white,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(24), // Add margin here
          width: MediaQuery.of(context).size.width, // Set your desired width
          height: 56,
          child: ElevatedButton(
            onPressed: _showBottomSheet,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff005aee)),
              // Change the button's background color
              padding: MaterialStateProperty.all(EdgeInsets.all(16)),
              // Add padding
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                // side: const BorderSide(
                //   color: Colors.black, // Add stroke color
                //   width: 3.0, // Adjust the stroke width
                // ),
              )),
            ),
            child: const Text(
              'Show Result',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w500,
                height: 1.26,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: ObjectDetectedScreen(),
    ));
