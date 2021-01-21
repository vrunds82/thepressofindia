import 'package:flutter/material.dart';
import 'package:morbiupdate/Custom/CustomAppBar.dart';
import 'package:morbiupdate/Custom/CustomColorsFile.dart';
import 'package:morbiupdate/Custom/Customdrawer.dart';
import 'package:morbiupdate/Global/Global.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {




String poster='assets/images/poster.png';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        body:
        Column(
          children: [
            CustomAppBar(logoimg: 'assets/images/logo.png',
              clickonmenuicon: (){
              _scaffoldKey.currentState.openDrawer();

              },),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.5,
              child:
              PageView.builder(
                itemCount: 6,
                //controller: pagecontroller,
                itemBuilder: (context, index) {
                  return new Card(
                    child: Image.asset(poster,fit: BoxFit.cover,),
                  );
                },
              ),
            ),
            Divider(height: 0.5,thickness: 1,color: staticBlack,),
            SizedBox(height: 6,),
            Container(decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    staticBlack,
              staticRed
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),

              child: TabBar(
                isScrollable: true,
                labelColor: staticBlack,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: staticRed),
                tabs: [
                  Tab(
                    child: Text(
                      "Home",style: TextStyle(
                      color: staticWhite
                    ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "News",style: TextStyle(
                        color: staticWhite
                    ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Gujarat",style: TextStyle(
                        color: staticWhite
                    ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "India",style: TextStyle(
                        color: staticWhite
                    ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "World",style: TextStyle(
                        color: staticWhite
                    ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Bollywood",style: TextStyle(
                        color: staticWhite
                    ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6,),
            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            Divider(height: 0.5,thickness: 1,color: staticBlack,),

                            Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Row(
                                children: [

                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'News',style: TextStyle(
                                        color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'See All',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Divider(height: 0.5,thickness: 1,color: staticBlack,),


                            Container(
                              width: MediaQuery.of(context).size.width*4,
                              height: MediaQuery.of(context).size.width*.7,

                              child: Container(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              semanticContainer: true,
                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                              child: Column(
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width*.4,
                                                      height: MediaQuery.of(context).size.width * .6,

                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                            poster)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 3,),
                                                  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Title",style: TextStyle(
                                                        fontSize: 17
                                                      ),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3,),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),


                            //2nd part


                            Divider(height: 0.5,thickness: 1,color: staticBlack,),

                            Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Row(
                                children: [

                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Gujarat',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'See All',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Divider(height: 0.5,thickness: 1,color: staticBlack,),


                            Container(
                              width: MediaQuery.of(context).size.width*4,
                              height: MediaQuery.of(context).size.width*.7,

                              child: Container(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Card(semanticContainer: true,
                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                              child: Column(
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width*.4,
                                                      height: MediaQuery.of(context).size.width * .6,

                                                      decoration: new BoxDecoration(

                                                        shape: BoxShape.rectangle,
                                                        image: new DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                poster)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 3,),
                                                  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Title",style: TextStyle(
                                                          fontSize: 17
                                                      ),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3,),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),

                           ],
                        ),
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    child: SingleChildScrollView(
                      child: Center(
                        child:  Column(
                          children: [
                            Divider(height: 0.5,thickness: 1,color: staticBlack,),

                            Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Row(
                                children: [

                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'News',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'See All',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Divider(height: 0.5,thickness: 1,color: staticBlack,),


                            Container(
                              width: MediaQuery.of(context).size.width*4,
                              height: MediaQuery.of(context).size.width*.7,

                              child: Container(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Card(

                                              child: Column(
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width*.4,
                                                      height: MediaQuery.of(context).size.width * .6,

                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                poster)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 3,),
                                                  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Title",style: TextStyle(
                                                          fontSize: 17
                                                      ),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3,),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),


                            //2nd part


                            Divider(height: 0.5,thickness: 1,color: staticBlack,),

                            Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Row(
                                children: [

                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Gujarat',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(decoration: BoxDecoration(color: staticBlack,
                                      border: Border.all(color:staticRed)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'See All',style: TextStyle(
                                          color: staticWhite
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Divider(height: 0.5,thickness: 1,color: staticBlack,),


                            Container(
                              width: MediaQuery.of(context).size.width*4,
                              height: MediaQuery.of(context).size.width*.7,

                              child: Container(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              child: Column(
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width*.4,
                                                      height: MediaQuery.of(context).size.width * .6,

                                                      decoration: new BoxDecoration(

                                                        shape: BoxShape.rectangle,
                                                        image: new DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                poster)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 3,),
                                                  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Title",style: TextStyle(
                                                          fontSize: 17
                                                      ),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3,),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  //third tab bar
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                          child:  Column(
                            children: [
                              Divider(height: 0.5,thickness: 1,color: staticBlack,),

                              Padding(
                                padding: const EdgeInsets.all(4.5),
                                child: Row(
                                  children: [

                                    Container(decoration: BoxDecoration(color: staticBlack,
                                        border: Border.all(color:staticRed)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'News',style: TextStyle(
                                            color: staticWhite
                                        ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(decoration: BoxDecoration(color: staticBlack,
                                        border: Border.all(color:staticRed)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'See All',style: TextStyle(
                                            color: staticWhite
                                        ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(height: 0.5,thickness: 1,color: staticBlack,),


                              Container(
                                width: MediaQuery.of(context).size.width*4,
                                height: MediaQuery.of(context).size.width*.7,

                                child: Container(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 4,
                                      itemBuilder: (BuildContext ctxt, int index) {
                                        return Container(
                                          child: Column(
                                            children: <Widget>[
                                              Card(

                                                child: Column(
                                                  children: <Widget>[
                                                    GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        width: MediaQuery.of(context).size.width*.4,
                                                        height: MediaQuery.of(context).size.width * .6,

                                                        decoration: new BoxDecoration(
                                                          image: new DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: AssetImage(
                                                                  poster)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 3,),
                                                    Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text("Title",style: TextStyle(
                                                            fontSize: 17
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ),


                              //2nd part


                              Divider(height: 0.5,thickness: 1,color: staticBlack,),

                              Padding(
                                padding: const EdgeInsets.all(4.5),
                                child: Row(
                                  children: [

                                    Container(decoration: BoxDecoration(color: staticBlack,
                                        border: Border.all(color:staticRed)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Gujarat',style: TextStyle(
                                            color: staticWhite
                                        ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(decoration: BoxDecoration(color: staticBlack,
                                        border: Border.all(color:staticRed)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'See All',style: TextStyle(
                                            color: staticWhite
                                        ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(height: 0.5,thickness: 1,color: staticBlack,),


                              Container(
                                width: MediaQuery.of(context).size.width*4,
                                height: MediaQuery.of(context).size.width*.7,

                                child: Container(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 4,
                                      itemBuilder: (BuildContext ctxt, int index) {
                                        return Container(
                                          child: Column(
                                            children: <Widget>[
                                              Card(
                                                child: Column(
                                                  children: <Widget>[
                                                    GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        width: MediaQuery.of(context).size.width*.4,
                                                        height: MediaQuery.of(context).size.width * .6,

                                                        decoration: new BoxDecoration(

                                                          shape: BoxShape.rectangle,
                                                          image: new DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: AssetImage(
                                                                  poster)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 3,),
                                                    Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text("Title",style: TextStyle(
                                                            fontSize: 17
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ),

                            ],
                          ),
                        )),
                  ),
                  //4rth
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [



    Column(
    children: [
    Divider(height: 0.5,thickness: 1,color: staticBlack,),

    Padding(
    padding: const EdgeInsets.all(4.5),
    child: Row(
    children: [

    Container(decoration: BoxDecoration(color: staticBlack,
    border: Border.all(color:staticRed)
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    'News',style: TextStyle(
    color: staticWhite
    ),
    ),
    ),
    ),
    Spacer(),
    Container(decoration: BoxDecoration(color: staticBlack,
    border: Border.all(color:staticRed)
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    'See All',style: TextStyle(
    color: staticWhite
    ),
    ),
    ),
    ),
    ],
    ),
    ),

    Divider(height: 0.5,thickness: 1,color: staticBlack,),


    Container(
    width: MediaQuery.of(context).size.width*4,
    height: MediaQuery.of(context).size.width*.7,

    child: Container(
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (BuildContext ctxt, int index) {
    return Container(
    child: Column(
    children: <Widget>[
    Card(

    child: Column(
    children: <Widget>[
    GestureDetector(
    onTap: () {},
    child: Container(
    width: MediaQuery.of(context).size.width*.4,
    height: MediaQuery.of(context).size.width * .6,

    decoration: new BoxDecoration(
    image: new DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    poster)),
    ),
    ),
    ),
    SizedBox(height: 3,),
    Column(
    mainAxisAlignment:
    MainAxisAlignment.start,
    crossAxisAlignment:
    CrossAxisAlignment.start,
    children: <Widget>[
    Text("Title",style: TextStyle(
    fontSize: 17
    ),),
    ],
    ),
    SizedBox(height: 3,),
    ],
    ),
    ),
    ],
    ),
    );
    }),
    ),
    ),


    //2nd part


    Divider(height: 0.5,thickness: 1,color: staticBlack,),

    Padding(
    padding: const EdgeInsets.all(4.5),
    child: Row(
    children: [

    Container(decoration: BoxDecoration(color: staticBlack,
    border: Border.all(color:staticRed)
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    'Gujarat',style: TextStyle(
    color: staticWhite
    ),
    ),
    ),
    ),
    Spacer(),
    Container(decoration: BoxDecoration(color: staticBlack,
    border: Border.all(color:staticRed)
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    'See All',style: TextStyle(
    color: staticWhite
    ),
    ),
    ),
    ),
    ],
    ),
    ),

    Divider(height: 0.5,thickness: 1,color: staticBlack,),


    Container(
    width: MediaQuery.of(context).size.width*4,
    height: MediaQuery.of(context).size.width*.7,

    child: Container(
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (BuildContext ctxt, int index) {
    return Container(
    child: Column(
    children: <Widget>[
    Card(
    child: Column(
    children: <Widget>[
    GestureDetector(
    onTap: () {},
    child: Container(
    width: MediaQuery.of(context).size.width*.4,
    height: MediaQuery.of(context).size.width * .6,

    decoration: new BoxDecoration(

    shape: BoxShape.rectangle,
    image: new DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    poster)),
    ),
    ),
    ),
    SizedBox(height: 3,),
    Column(
    mainAxisAlignment:
    MainAxisAlignment.start,
    crossAxisAlignment:
    CrossAxisAlignment.start,
    children: <Widget>[
    Text("Title",style: TextStyle(
    fontSize: 17
    ),),
    ],
    ),
    SizedBox(height: 3,),
    ],
    ),
    ),
    ],
    ),
    );
    }),
    ),
    ),

    ],
    ),
                            ],
                          ),
                        )),
                  ),

                  //5th
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [



                              Column(
                                children: [
                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),

                                  Padding(
                                    padding: const EdgeInsets.all(4.5),
                                    child: Row(
                                      children: [

                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'News',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'See All',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),


                                  Container(
                                    width: MediaQuery.of(context).size.width*4,
                                    height: MediaQuery.of(context).size.width*.7,

                                    child: Container(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext ctxt, int index) {
                                            return Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Card(

                                                    child: Column(
                                                      children: <Widget>[
                                                        GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width*.4,
                                                            height: MediaQuery.of(context).size.width * .6,

                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage(
                                                                      poster)),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 3,),
                                                        Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("Title",style: TextStyle(
                                                                fontSize: 17
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 3,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),


                                  //2nd part


                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),

                                  Padding(
                                    padding: const EdgeInsets.all(4.5),
                                    child: Row(
                                      children: [

                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Gujarat',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'See All',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),


                                  Container(
                                    width: MediaQuery.of(context).size.width*4,
                                    height: MediaQuery.of(context).size.width*.7,

                                    child: Container(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext ctxt, int index) {
                                            return Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Card(
                                                    child: Column(
                                                      children: <Widget>[
                                                        GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width*.4,
                                                            height: MediaQuery.of(context).size.width * .6,

                                                            decoration: new BoxDecoration(

                                                              shape: BoxShape.rectangle,
                                                              image: new DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage(
                                                                      poster)),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 3,),
                                                        Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("Title",style: TextStyle(
                                                                fontSize: 17
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 3,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  //6th
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [



                              Column(
                                children: [
                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),

                                  Padding(
                                    padding: const EdgeInsets.all(4.5),
                                    child: Row(
                                      children: [

                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'News',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'See All',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),


                                  Container(
                                    width: MediaQuery.of(context).size.width*4,
                                    height: MediaQuery.of(context).size.width*.7,

                                    child: Container(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext ctxt, int index) {
                                            return Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Card(

                                                    child: Column(
                                                      children: <Widget>[
                                                        GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width*.4,
                                                            height: MediaQuery.of(context).size.width * .6,

                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage(
                                                                      poster)),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 3,),
                                                        Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("Title",style: TextStyle(
                                                                fontSize: 17
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 3,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),


                                  //2nd part


                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),

                                  Padding(
                                    padding: const EdgeInsets.all(4.5),
                                    child: Row(
                                      children: [

                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Gujarat',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(decoration: BoxDecoration(color: staticBlack,
                                            border: Border.all(color:staticRed)
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'See All',style: TextStyle(
                                                color: staticWhite
                                            ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Divider(height: 0.5,thickness: 1,color: staticBlack,),


                                  Container(
                                    width: MediaQuery.of(context).size.width*4,
                                    height: MediaQuery.of(context).size.width*.7,

                                    child: Container(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (BuildContext ctxt, int index) {
                                            return Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Card(
                                                    child: Column(
                                                      children: <Widget>[
                                                        GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width*.4,
                                                            height: MediaQuery.of(context).size.width * .6,

                                                            decoration: new BoxDecoration(

                                                              shape: BoxShape.rectangle,
                                                              image: new DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage(
                                                                      poster)),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 3,),
                                                        Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("Title",style: TextStyle(
                                                                fontSize: 17
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 3,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
