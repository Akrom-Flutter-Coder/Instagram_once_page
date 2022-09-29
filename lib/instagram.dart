import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Instagram_Once_Page extends StatefulWidget {
  const Instagram_Once_Page({super.key});

  @override
  State<Instagram_Once_Page> createState() => _Instagram_Once_PageState();
}

class _Instagram_Once_PageState extends State<Instagram_Once_Page> {
  List name=["Your story",'makh_170',"mm_feruza","macbro","abbose","noila","olimjon","flutter","UI_UX","ilmhup.uz"];
  List imag=['assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  ];
  bool like_num=true;
  bool save_bool=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar
       bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black),
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,color: Colors.black),
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,color: Colors.black),
         ),
         BottomNavigationBarItem(
            icon: Icon(Icons.circle,color: Colors.black),
         ),
       ],),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
         Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Container(
                  height: 40,
                  width: 110,
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVsBMwE45E6rXsJHWO5p-C95h6sH4FRk7IA&usqp=CAU',fit: BoxFit.cover,)),
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Container(
                  height: 26,
                  width: 26,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPDqto1vFnyFsVrKTiNLoIwt_xyiqe5N_wqxDj0E5F1EEYVW98PolNPx-80xW0W7hgx8&usqp=CAU",fit: BoxFit.cover,)),
               ),
              ],
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                         child: Container(
                          height: 74,
                          width: 74,
                          child: Center(
                            child:index==0 ?Image.asset('assets/images/me.png',
                            fit: BoxFit.cover,):
                            Image.asset(imag[index%4])
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                              color: Color(0xfffdbb4b),
                              spreadRadius: 0.001,
                             // blurRadius: 0.001,
                              offset: Offset(-2, 2)
                            ),
                            
                            BoxShadow(
                             color: Color(0xffc20db7),
                              spreadRadius: 0.001,
                             // blurRadius: 0.001,
                              offset: Offset(2, 2)
                            ),
                             BoxShadow(
                             color: Color(0xfff93e37),
                              spreadRadius: 0.001,
                            //  blurRadius: 0.001,
                              offset: Offset(-2, -2)
                            ),
                             BoxShadow(
                             color: Color(0xffc20db7),
                              spreadRadius: 0.001,
                            //  blurRadius: 0.001,
                              offset: Offset(2, -2)
                            )
                            ]
                          ),
                         ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                         child: Text(name[index],
                         style:const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                         ),
                         ),
                        )
                      ],
                    ),
                  );
              })),
            ),
             Container(
               height: 48,
               decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 242, 240, 240),
                  //  spreadRadius: 3,
                   // blurRadius: 1,
                  )
                ]
               ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(children:const [
                  SizedBox(width: 6),
                CircleAvatar(
                  child: Image(image: AssetImage('assets/images/me.png')),radius: 16,),
                 SizedBox(width: 8,),
                 Text('akrom_flutter_coder',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                 ),)
               ],),
             const  Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: Icon(Icons.more_vert),
               )
             ],
             ),
             ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: InkWell(
                onDoubleTap: () {
                  setState(() {
                    if(like_num==true){
                      like_num=false;
                    }
                  });
                },
                child: Container(
                  height: 440,
                  width: double.infinity,
                  color: Colors.amber,
                           child: Image.asset('assets/images/post.jpg',fit: BoxFit.cover,),
                ),
              ),
            ),
            Padding(
            padding:const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                  const  SizedBox(width: 6),
                   like_num==true? InkWell(
                    onTap: () {
                      setState(() {
                        if(like_num==true){
                          like_num=false;
                        }
                      });
                    },
                    child: Image.asset('assets/images/like.png',height: 34,width: 34,)):
                   InkWell(
                     onTap: () {
                       setState(() {
                         if(like_num==false){
                           like_num=true;
                         }
                       });
                     },
                     child: Image.asset('assets/images/like_red.png',height: 34,width: 34,)),
                  const  SizedBox(width: 6),
                    Image.asset('assets/images/mess.png',height: 34,width: 32,),
                  const  SizedBox(width: 6),
                    Image.asset('assets/images/send.png',height: 34,width: 34,),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 6),
                child: InkWell(
                  onTap: () {
          final snackBar = SnackBar(
            duration:const Duration( seconds: 5),
            //shape: ,
            backgroundColor: Colors.grey[200],
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(bottom: 91),
            content: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/post.jpg',fit: BoxFit.cover,),
                ),
               const SizedBox(width: 10,),
               const  Text('Saved',
                 style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                 ),),
              ],
            ),
            action: SnackBarAction(
              label: 'Save to collaction',
              onPressed: () {
               setState(() {
                 if(save_bool==false){
                  save_bool=true;
                 }
               });
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
                  child:save_bool==false? Image.asset('assets/images/save.png',height: 33,width: 30):
                 InkWell(
                  onTap: (() {
                    setState(() {
                      if(save_bool==true){
                        save_bool=false;
                      }
                    });
                  }),
                  child: Image.asset('assets/images/save_black.png',height: 33,width: 30))),
                )
              ],
            ),
            ),
            Row(
              children: [
               Padding(
                 padding: const EdgeInsets.only(left:4.0),
                 child: Stack(
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(left: 40.0),
                       child: Container(
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/images/4.png',fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                    ),
                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 24.0),
                       child: Container(
                    width: 20,
                    height: 20,
                     child: Image.asset('assets/images/1.png',fit: BoxFit.cover,),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2
                          )
                        ]
                    ),
                  ),
                     ),
                  
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                      width: 21,
                      height: 21,
                       child: Image.asset('assets/images/me.png',fit: BoxFit.cover,),
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2
                       )]
                      ),
                     ),
                    ),
                  ],
                 ),
               ),
             const SizedBox(width: 10,),
             const Text('Liked by ' ),
             Text('${name[1]},${name[2]} ',
              style:const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                 )),
             const Text('and'),
              const Text(' others ',
               style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                 )),
              ],
            ),
          const  Padding(
              padding:  EdgeInsets.only(right:30.0,top: 4 ),
              child: Text('This photo was taken on Day 2 of Pepsi Music Fest'),
            ),
          ],
        ),
      ] 
     )
    );
  }
}