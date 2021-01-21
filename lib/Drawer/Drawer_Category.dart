import 'package:flutter/material.dart';
import 'package:morbiupdate/Custom/CustomColorsFile.dart';
import 'package:morbiupdate/Global/Global.dart';




class News_category_drawer extends StatefulWidget {
  @override
  _News_category_drawerState createState() => _News_category_drawerState();
}

class _News_category_drawerState extends State<News_category_drawer> {
  final title = 'Grid List';

  List<String> clist=[

   "  News",
   " Gujarat",
  "  World",
"    Sports",
    "Video",
    "Promotional",
    "Tankara",
    "Wakaner",

    "Ahmedabad",
    "Amreli",
    "Anand",
    "Aravalli",
    "Bharuch",
    "Bhavnagar",
    "Botad",
   " Chhota Udaipur",
    "Dahod",
    "Dang"

  ];

  String poster='assets/images/poster.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.white,title:Text("Choose Category",style: TextStyle(color: staticRed,fontSize: MediaQuery.of(context).size.width*0.06,fontWeight: FontWeight.bold,),),
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();

          },child: Icon(Icons.arrow_back,color: Colors.black,),
        ),),
      body: GridView.count(

        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(clist.length,(index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(elevation: 7.7,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(splashColor: staticBlack,onTap: (){

               // Global.selectedCategoryId=Global.CategoryList[index].id.toString();
                Navigator.of(context).pushNamed('categorynews');

              },
                child: GridTile(
                  child: Center(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Column(
                          children: [
                            Divider(height:1,thickness: 1,),
                            Container( width: MediaQuery.of(context).size.width,
                              color: staticRed,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                    clist[index],textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16,color: staticWhite,fontWeight: FontWeight.w400)
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              constraints: new BoxConstraints.expand(
                                height: 135.0,
                              ),
                              alignment: Alignment.bottomLeft,
                              padding: new EdgeInsets.only(bottom: 3.0),
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage(poster),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new Text('2707 Post',
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      )
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),

    );
  }
}
