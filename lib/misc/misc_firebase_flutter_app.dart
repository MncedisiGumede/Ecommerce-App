// import 'dart:html';

// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';

// void initState(){
//   initState();
//   DatabaseReference referenceData = FirebaseDatabase.instance.ref().child("Data");
//   referenceData.once().then((DataSnapshot dataSnapShot){
//     dataList.clear();
//     var keys = dataSnapShot.value.keys;
//     var values = dataSnapShot.value;

//     for(var key in keys){
//       Data data = new Data(
//         values [key]["imgUrl"],
//         values [key]["name"],
//         values [key]["material"],
//         values [key]["price"],
//       );
//       dataList.add(data);
//     }
//     setState((){
//     });

//   });
// }


//   body: dataList.length == 0 ? Center(child: Text("No Data Available", style: TextStyle(fontSize: 30),)): ListView.builder(
//     itemBuilder: (_, index){
//       return CardUI(dataList[index].imgUrl, dataList[index].name, dataList[index].material, dataList[index].price,);
//     }
//   )

// class Data{
//   String imgUrl, name, material, price;

//   Data(this.imgUrl, this.name, this.material, this.price);

//   List<Data> dataList = [];
// }