
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              MyPost("Mortadha","Baghdad","images/mor.jpg","images/mor.jpg",5000),
              MyPost("Dnd","Dubai","images/mylogo.png","images/mor_enjoy.jpg",1845),
            ],
          ))


        ],
      ),
    );
  }

  Container MyPost(String name,String Location ,String img,ImgePost,int like) {
    return Container(
                padding: const EdgeInsets.all(16),
              margin:const EdgeInsets.all(16) ,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.3),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              backgroundImage: AssetImage(img),
                            ),
                          ),

                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18 ),),
                              Text(Location,style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500,fontSize: 15 ),),
                            ],
                          ),
                        ],
                      ),
                       Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    ],
                  ),
                  MyImgePost(ImgePost),
                  Text("$like Like",style: TextStyle(color: Colors.black,fontSize: 18),)

                ],
              )
            );
  }

  Stack MyImgePost(String imgePost) {
    return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(top: 16),
        height: MediaQuery.of(context).size.width-70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          image: new DecorationImage(
            image: new ExactAssetImage(imgePost),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 10,
          right: 10,
          child:Icon(Icons.favorite,color: Colors.white.withOpacity(0.9),size: 35,)
      )
    ],
    );
  }
}
