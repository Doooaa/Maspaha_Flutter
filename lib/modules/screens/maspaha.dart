import 'package:flutter/material.dart';
import '../widgets/format_text.dart';
class Sepha extends StatefulWidget {
  const Sepha({super.key});
  @override
  State<Sepha> createState() => _SephaState();
}
int counter = 0, index = 0,round=0;
List<String> list_PraiseAllah  = [
  "سبحان اللَه",
  "الحمد للًه ",
  "اللَّهُ أَكْبَرُ",
];

class _SephaState extends State<Sepha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      toolbarHeight: 30,
      title: const Center(child: Text('فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى ',style: TextStyle(fontSize: 20),)),
      flexibleSpace: const Image(
        image: AssetImage('assets/images/img.png'),
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.transparent,
    ),
        body: Container(
          width:double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/isla.png"),
                  fit: BoxFit.cover,
                ),
              ),
          child: Column(
            children: [

              const SizedBox(height:200,),
             Text(list_PraiseAllah [index],style: formatTextForName()),
              Text(
                "$counter",
                style:formatText(30),
              ),
              const SizedBox(height:20,),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(width:6,color: Colors.white),
                  shape: BoxShape.circle,

                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text("اضغط",style: TextStyle(fontSize:20,color:Colors.white,
                          fontWeight: FontWeight.bold,shadows: [
                            Shadow(
                              // bottomLeft
                                offset: Offset(0, 0),
                                color: Color(0xffffffff),
                                blurRadius: 7),]
                      )),
                      onPressed: () {
                        setState(() {
                          if ((counter==33||counter==66||counter==99)&&index<2) index++;
                          else if(index==2 && counter==99){ index=0; round++; counter=0;}
                          counter++;
                        });
                      },
                    ),

                  ],
                ),
              ),

              const SizedBox(height:150,),
              Row(
                children: [
                  const SizedBox(width:10,),
                  TextButton(onPressed:(){
                    setState(() {
                      index = 0;
                      counter = 0;
                      round=0;
                    });
                  }, child: Text("البدأ مرة اخري",style:formatText(20)),
                  ),
                  const SizedBox(width:130,),
                  Text(
                      "  رقم الدورة : $round",
                      style:formatText(20)
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
