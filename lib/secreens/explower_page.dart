import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplowerPage extends StatefulWidget {
  const ExplowerPage({Key? key}) : super(key: key);

  @override
  State<ExplowerPage> createState() => _ExplowerPageState();
}

class _ExplowerPageState extends State<ExplowerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          searchBar(context),
          Allpostes(context),
          //Post(Colors.teal, "images/mor.jpg"),
        ],
      ),
     );
  }

  Container Allpostes(BuildContext context) {
    return Container(
          height:MediaQuery.of(context).size.height*0.799,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: List.generate(Mylist.length,
                  (index) => Post(Mylist[index].mycolor, Mylist[index].img))),
        );
  }

  Container searchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      margin: EdgeInsets.only(top: 48, left: 8, right: 16),
      height: MediaQuery.of(context).size.height / 17,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(0.5)),
      child: Row(
        children: [
          Icon(
            Icons.search_sharp,
            size: 30,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Search",
            style: TextStyle(
                color: Colors.black12.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
        ],
      ),
    );
  }

  Container Post(Color mycolor, String img) {
    return Container(
      decoration: BoxDecoration(
        color: mycolor,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(img),
        ),
      ),

    );
  }
}

class myclass {
  late Color mycolor;
  late String img;

  myclass({required this.img, required this.mycolor});
}

List<myclass> Mylist = [
  myclass(img: "https://picsum.photos/250?image=100",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=27",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=34",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=41",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=56",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=60",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=72",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=85",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=96",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=10",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=111",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=12",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=13",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=14",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=15",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=16",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=17",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=18",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=19",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=20",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=21",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=22",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=23",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=24",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=25",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=26",mycolor: Colors.teal),
  myclass(img: "https://picsum.photos/250?image=260",mycolor: Colors.teal),

];
