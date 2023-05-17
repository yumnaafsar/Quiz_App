import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({ Key? key }) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {

    new Future.delayed(const Duration(seconds: 15),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Quiz App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),)),
      ),
      body: Center(
        child: Container(
              //constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
              image:AssetImage('assets/images/quiz1.jpg'),
              fit: BoxFit.cover)
              ),
        child: Stack(
          children:[
            Positioned(
              top: 5,
              right: 10,
              child: Logo('assets/images/english.jpg'),
            ),
            Positioned(
              top: 5,
              left: 10,
              child:  Logo('assets/images/IQ1.jpg'),
            ),
            Positioned(
              bottom: 5,
              left: 10,
              child: Logo('assets/images/maths1.jpg'),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              child: Logo('assets/images/science.png'),
            )
          ]
        ),
      ) ,
    )
    );
  }
}

/*var myanimation;
Widget animate(String img){
  return AnimatedSwitcher(
          duration: Duration(seconds: 15),
         transitionBuilder: (Widget child, Animation<double> animation) =>
         ScaleTransition(
           scale: animation,
           child: child,
           ),
           child:Container(
    child: CircleAvatar(
      backgroundColor: Colors.black,
      radius: 60,
      child: CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 55,
      ),
      ),
  ) ,
  );
}*/
              

Widget Logo(String Url){
  return Container(
    child: CircleAvatar(
      backgroundColor: Colors.black,
      radius: 60,
      child: CircleAvatar(
        backgroundImage: AssetImage(Url),
        radius: 55,
      ),
      ),
  );
}