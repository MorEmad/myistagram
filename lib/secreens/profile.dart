import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Profilee extends StatefulWidget {
  const Profilee({Key? key}) : super(key: key);

  @override
  State<Profilee> createState() => _ProfileeState();
}

class _ProfileeState extends State<Profilee> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageOfProfile(),
            Text(
              "Mortadha",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Baghdad",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            DetailsOfProfil(),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  padding: EdgeInsets.all(10),
                  children: List.generate(
                      Mylist.length,
                      (index) => MyContainer(
                          Mylist[index].mycolor, Mylist[index].img))),
            )
          ],
        ),
      ),
    );
  }

  Padding DetailsOfProfil() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          myElementRow("53", "Photo"),
          myElementRow("13k", "Followers"),
          myElementRow("1000", "Following")
        ],
      ),
    );
  }

  Center ImageOfProfile() {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundImage: Image.asset("images/mor.jpg").image,
          radius: 100,
        ),
      ),
    );
  }

  Container MyContainer(Color mycolor, String img) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: mycolor,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: Image.asset(img).image,
          fit: BoxFit.cover
        ),
      ),
    );
  }

  Column myElementRow(String num, String txt) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          txt,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}

class myclass {
  late Color mycolor;
  late String img;

  myclass({required this.img, required this.mycolor});
}

List<myclass> Mylist = [
  myclass(img: "images/mor.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA1.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA2.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA3.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA4.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA5.jpg", mycolor: Colors.grey),
  myclass(img: "images/DNA6.jpg", mycolor: Colors.grey),
];
