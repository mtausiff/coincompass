import 'package:flutter/material.dart';

class FlutterWidgetConcepts extends StatelessWidget {
  const FlutterWidgetConcepts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    demoMultipleConstructor();

    //############################

    demo_setStateMethod();

    //############################

    demoDisplayImage();

    //############################

    demoAddButton();

    //############################

    demo_SizedBoxWidget();

    return const Placeholder();
  }

  Widget demoMultipleConstructor() {
    //First way to invoke reusable Widget with params
    return const MultipleConstructorExample.purple();

    //Second way to invoke reusable Widget with params
    //return const MultipleConstructorExample(color1: Colors.deepPurple, color2: Colors.indigo);
  }

  // Add & display image
  void demoDisplayImage() {
    /* 1. Add images in assets directory and
       2. add images directory path to pubspec.yaml file
       3. Build pubspec dependencies
       4. Invoke Image widget (below line) to display image on screen
    */
    Image.asset("assets/images/app_logo.png", width: 200,);
  }

  //Add button and perform action
  void demoAddButton() {
    /* There are three kind of buttons
      1. TextButton
      2. ElevatedButton
      3. OutlinedButton
     */
    //First Approach: using anonymous function
    TextButton(
      onPressed: () {
        //perform action on button pressed
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 20),
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 28),
      ),
      child: const Text('button Name'),
    );

    //Second Approach: using already defined function
    TextButton(
      onPressed: performButtonPressedAction,
      child: const Text('button Name'),
    );


    ElevatedButton(
      onPressed: () {
        //perform action on button pressed
      },
      onLongPress: () {
        //perform action on button long pressed
      },
      child: const Text('button Name'),
    );

    OutlinedButton(onPressed: () {}, onLongPress: () {}, child: const Text('button Name'),);

  }

  void performButtonPressedAction(){
    //perform some action
  }

  //Make Space between two Widgets
  void demo_SizedBoxWidget() {
    //to make space horizontally
    const SizedBox(
      width: 50,
    );

    //to make space vertically
    const SizedBox(
      height: 100,
    );

    //Another approach to give space - using padding
    TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 20),
    );
  }

  //Update widget state by re-building widget
  void demo_setStateMethod() {
  // uncomment below code to see how it works
    /*setState(() {
      //Update the globally defined variable data here
      activeDiceImage = 'updated_image_path.png';
    });*/
  }
}

class MultipleConstructorExample extends StatelessWidget {
  //Named params constructor : Second way
  //const MultipleConstructorExample(Color color1, Color color2, {super.key});

  //Positional params constructor : First way
  final Color color1, color2;
  const MultipleConstructorExample({required this.color1, required this.color2, super.key});

  //Positional params constructor with Multiple constructor
  const MultipleConstructorExample.purple({ super.key})
                  : color1 = Colors.deepPurple,
                    color2 = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return const Text("Test Multiple constructor example....");
  }
}
