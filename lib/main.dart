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
                    child:Text('深圳 · 26°C',style:TextStyle(fontSize: 14.6)),
                    padding:EdgeInsets.only(left:2.2)
                )
          ]),
          brightness: Brightness.light,
          toolbarHeight: 49.3,
          backgroundColor:Color.fromRGBO(0,136,255,1)
      ),
      //body占屏幕的大部分
      body:SingleChildScrollView(
            child:Column(
              children:[
                Container(
                    decoration: BoxDecoration(
                        color:Color.fromRGBO(0,136,255,1),
                        borderRadius:BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight:  Radius.circular(16))
                    ),
                    child:Column(
                      children: [
                         AdCard(),
                         MenusLink()
                      ],
                    )
                ),
                StatisticsArea(),
                LatestMarket(),
                FastNews()
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
                this.image,
                Padding(child: Text(this.text),padding:EdgeInsets.only(top:10))
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
      child:Container(
        color:Colors.white,
        margin: EdgeInsets.only(top:17.9),
        child:Column(
        children:[
          Container(
            alignment: Alignment.topLeft,
            margin:EdgeInsets.only(left:17.9,bottom:17.9),
            child: Text(
                '关键数据',
                style:TextStyle(
                    fontSize: 22.4,
                    fontFamily: "PingFangSC",
                    fontWeight: FontWeight.bold,
                    height:2.2,
                )
            ),
          ),
          Wrap(
            children: [
              DataCard(topText:"99+", bottomText:'人气排名', width:140.0,height: 114.2),
              Card(
                child:Container(
                  width: 235.2,
                  height: 114.2,
                  decoration: BoxDecoration(
                    border:Border.all(
                        color:Color.fromRGBO(19,19,25,0.08),
                        width:1,
                        style:BorderStyle.solid
                    )
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text('名片访客/人'),
                      Text('名片访问/次')
                    ],
                  )
                )
              ),
              Card(
                  child:Container(
                      width: 384.2,
                      height: 114.2,
                      decoration: BoxDecoration(
                          border:Border.all(
                              color:Color.fromRGBO(19,19,25,0.08),
                              width:1,
                              style:BorderStyle.solid
                          )
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('名片访客/人'),
                          Text('名片访问/次')
                        ],
                      )
                  )
              ),
              Card(
                  child:Container(
                      width: 235.2,
                      height: 114.2,
                      decoration: BoxDecoration(
                          border:Border.all(
                              color:Color.fromRGBO(19,19,25,0.08),
                              width:1,
                              style:BorderStyle.solid
                          )
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('名片访客/人'),
                          Text('名片访问/次')
                        ],
                      )
                  )
              ),
              DataCard(topText:"8", bottomText:'成交/套', width:140.0,height: 114.2),
            ],
          )
        ],
      )
      ),

    );
  }
}

class DataCard extends StatelessWidget{
  late String topText;
  late String bottomText;
  late double width;
  late double height;
  DataCard({topText,bottomText,width,height}){
    this.topText = topText;
    this.bottomText = bottomText;
    this.width = width;
    this.height = height;
  }
  @override
  Widget build(BuildContext context){
    return Card(
        child:InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap:(){
            print('Card tapped');
          },
          child:Container(
            width: this.width,//140,
            height: this.height,//114.2,
            decoration: BoxDecoration(
                border:Border.all(
                  color:Color.fromRGBO(19,19,25,0.08),
                  width:1,
                  style:BorderStyle.solid
                )
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(this.topText),
                Text(this.bottomText)
              ],
            )
          )
        )
      );
  }
}

class LatestMarket extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.white,
      child: Column(
        children: [
          Container(
            height: 49.3,
            margin:EdgeInsets.only(left:17.9),
            child:Row(
              children: [
                Text('最新行情',
                  style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.4,
                      height: 2,
                      fontFamily: 'PingFangSC'
                  ),
                ) ,
                Text('  |  一分钟了解楼市行情',
                    style:TextStyle(
                        color:Color.fromRGBO(121,128,138,1),
                        fontWeight: FontWeight.w400,
                        height: 2.6
                    )
                )
              ],
            ),
          ),
          Image(
            image:NetworkImage('https://bkimg.cdn.bcebos.com/pic/3b87e950352ac65c10381e7101baa5119313b07e1cd2?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyMjA=,g_7,xp_5,yp_5/format,f_auto'),
            width:262.1,
          )
        ],
      ),
    );
  }
}

class FastNews extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.white,
      child: Column(
        // margin:EdgeInsets.all(17.9),
        children: [
          Container(
            child:Row(
              children: [
                Image.asset('images/title_home_news.png'),
                Text(' |  每日最新咨询，快速分享')
              ],
            ),
            height: 49.3,
            margin:EdgeInsets.only(top:9,left:17.9)
          ),
          Card(
              color:Colors.white,
              elevation: 20.0,
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              child:Container(
                  width:384.2,
                  padding: EdgeInsets.only(left:17.9,top:20.2,bottom:31.0),
                  child:Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child:
                          Text('03.08 · 周一',
                            style:TextStyle(color:Color.fromRGBO(0,136,255,1),fontWeight: FontWeight.bold),
                          )
                      ),
                      Row(
                        children: [
                          Image.asset('images/home_important.png'),
                          Container(
                            width: 234.1,
                            margin:EdgeInsets.only(left:29.6,top:7.8,bottom:7.8),
                            child: Text(
                              '公寓绝版、无房优、邵登峰邵登峰2020年深圳地产九大关键词火热出炉',
                              style:TextStyle(color:Color(0xFF40454C),fontSize: 15.7,fontWeight: FontWeight.w500),
                              maxLines:2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:EdgeInsets.only(top:26.9),
                        child:Row(
                          children: [
                            Container(
                              width:6.7,
                              height: 6.7,
                              margin:EdgeInsets.only(right:13.4),
                              color:Color.fromRGBO(0,136,255,1),
                            ),
                            Text('2021年房地产市场怎么走？',
                              textAlign: TextAlign.left,
                              style: TextStyle(height: 1.46,fontSize:15.7),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(top:26.9),
                        child: Row(
                          children: [
                            Container(
                              width:6.7,
                              height: 6.7,
                              margin:EdgeInsets.only(right:13.4),
                              color:Color.fromRGBO(0,136,255,1),
                            ),
                            Text('日光盘比例近30%，2020年深圳入市住宅盘点？',
                                textAlign: TextAlign.left,
                                style:TextStyle(height:1.46,fontSize:15.7)
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ) ,
          ),
        ],
      )
    );
  }
}
