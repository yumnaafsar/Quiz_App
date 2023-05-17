import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
      ),
      body:ListView(
        
        children: [
          SizedBox(height: 20,),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Cont('assets/images/IQ.png'),
                    SizedBox(width: 10,),
                    Cont('assets/images/maths.png'),
                  ],
                ),
                SizedBox(height: 10,),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Cont('assets/images/english1.jpg'),
                    SizedBox(width: 10,),
                    Cont('assets/images/science1.jpg'),
                  ],
            ),
        ],
      ) ,
      );
  }
}
Widget Cont(String img)
{
  return Container(
    height: 250,
    width: 250,
    decoration: BoxDecoration(
            border: Border.all(width: 5,color: Colors.black),  
            ),
    child: Column(
      children: [
        Container(
              height:200,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(img),fit: BoxFit.fill),
                border: Border.all(width: 5,color: Colors.black),  
                ),
              ),
        Container(
              width: 250.0,
              height: 50.0,
              color: Colors.lightBlue,
              child: new RawMaterialButton(
                 shape: new CircleBorder(),
                 elevation: 0.0,
                 child: Text('START', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                   onPressed: () {
                    
                   },
                   ),
                   ),
        //backgroundColor: Colors.lightBlue,
        //foregroundColor: Colors.black,
        //child: Text('Start'),
        //onPressed: (){}
      ],
    ),      
  );
}
/*Widget Cont(String img){
  return Center(
    child: ListTile(
      leading: Container(
        height:250,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img),fit: BoxFit.fill),
          border: Border.all(width: 5,color: Colors.black),  
          ),
        ),
      title: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.black,
        child: Text('Start'),
        onPressed: (){

      }),

    )
  );
}*/


