import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
      title: 'Flutter Tutorial',
      home: new TutorialHome(),
    )
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
      appBar:AppBar(
          title:Row(
              children:[
                Image.asset('images/climate.png'),
                Padding(
                    child:Text('深圳 · 26°',style:TextStyle(fontSize: 14.6)),
                    padding:EdgeInsets.only(left:2.2)
                )
          ]),
          brightness: Brightness.light,
          toolbarHeight: 49.3,
          backgroundColor:Color.fromRGBO(0,136,255,1)
      ),
      //body占屏幕的大部分
      body:SafeArea(
          child:Column(
            children:[
              Container(
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(0,136,255,1),
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight:  Radius.circular(16))
                  ),
                  child:Column(
                    children: [
                      new AdCard(),
                      new MenusLink()
                    ],
                  )
              ),
              new StatisticsArea()
            ],
          ),
      ),
    );
  }
}

class AdCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                child: Image.asset('images/icon_home_dailyword.png'),
                padding:EdgeInsets.only(left:16,top:12,bottom:5)
              ),
            ),
            Container(
              width: 348,
              child: Text(
                '前行的路，不怕万人阻挡，只怕自己投降；人生的帆，不怕狂风巨浪，只怕自己没胆量！有路，就大胆去走；有梦就有方向，加油，奥利给',
                style:TextStyle(color:Colors.white,fontSize: 12),
                maxLines:2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ]
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromRGBO(0,114,213,1),Color.fromRGBO(0,121,244,1)],
            ),
          borderRadius:BorderRadius.only(topLeft:Radius.circular(8) ,topRight: Radius.circular(8))
        ),
        height: 96.6,
        width:384.2,
        margin: EdgeInsets.only(top:17.9),
      )
    );
  }
}


class MenusLink extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      child:Container(
        height: 202,
        width: double.infinity,
        decoration: BoxDecoration(
          color:Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,1),
              color:Colors.grey,
              blurRadius: 1.0,
            )
          ],
          borderRadius:BorderRadius.all(Radius.circular(16))
        ),
        alignment: Alignment.center,
        child:Wrap(
          children: [
            MiniCard(text:'房源库', image:Image.asset('images/icon_home_allhouse.png')),
            MiniCard(text:'房源本', image:Image.asset('images/icon_home_myhouse.png')),
            MiniCard(text:'楼盘报备', image:Image.asset('images/icon_home_report.png')),
            MiniCard(text:'海报', image:Image.asset('images/icon_home_bill.png')),
            MiniCard(text:'我的名片', image:Image.asset('images/icon_home_aicard.png')),
            MiniCard(text:'我的客户', image:Image.asset('images/icon_home_customer.png')),
            MiniCard(text:'我的成交', image:Image.asset('images/icon_home_transaction.png')),
            MiniCard(text:'我的展位', image:Image.asset('images/icon_home_jike.png')),
            MiniCard(text:'我的线索', image:Image.asset('images/icon_home_pushcloud.png')),
            MiniCard(text:'递名片', image:Image.asset('images/icon_home_delivercard.png'))
          ],
        )
      )
    );
  }
}

class MiniCard extends StatelessWidget {
  late String text;
  late Image image;
  MiniCard({text,image}){
    this.text = text;
    this.image = image;
  }
  @override
  Widget build(BuildContext context){
    return new GestureDetector(
        child:Container(
          width:79.5,
          height:89.6,
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image.asset('images/icon_home_allhouse.png'),
                this.image,
                Text(this.text)
              ]
          )
        )
    );
  }
}

class StatisticsArea extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      child:Align(
        alignment: Alignment.topLeft,
        child: Text('关键数据'),
      )
    );
  }
}