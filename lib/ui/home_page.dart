import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


const request = "https://covid19-brazil-api.now.sh/api/report/v1";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}


class _HomePageState extends State<HomePage> {

  int suspeitos;
  int casos;
  int rejeitados;
  int mortes;
  String estado;
  String data;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitRipple(color: Color(0xFF0055B9),size: 100.0, duration: Duration(milliseconds: 1000),),
                  Divider(color: Color(0xFFF4F4F4)),
                  Text('Carregando dados...',
                    style: TextStyle(color: Color(0xFF0055B9), fontSize: 25.0),
                    textAlign: TextAlign.center,)
                ],
              );
            default:
              if(snapshot.hasError){
                return Center(
                    child: Text('Erro ao carregar dados :(',
                      style: TextStyle(color: Color(0xFF0055B9), fontSize: 25.0),
                      textAlign: TextAlign.center,)
                );
              }else{
                return ListView.builder(
                            padding: EdgeInsets.all(10.0),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 27,
                            itemBuilder: (context, index) {
                              suspeitos = snapshot.data['data'][index]['suspects'];
                              casos = snapshot.data['data'][index]['cases'];
                              mortes = snapshot.data['data'][index]['deaths'];
                              rejeitados = snapshot.data['data'][index]['refuses'];
                              estado = snapshot.data['data'][index]['state'];
                              data = snapshot.data['data'][index]['datetime'];
                              return _Card(suspeitos, casos, mortes, rejeitados, estado, data);
                            }
                  );
              }
          }
        });
  }
  Widget _Card(suspeitos, casos, mortes, rejeitados, estado, data) {
    DateTime tempDate = new DateFormat("yyyy-MM-ddThh:mm:ssZ").parse(data);
    final df_d = new DateFormat('dd-MM-yyyy');
    final df_h = new DateFormat('HH:mm');
    return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(estado, style: TextStyle(color: Color(0xFF0055B9),fontSize: 35,), textAlign: TextAlign.start,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Casos: ', style: TextStyle(color: Color(0xFF0055B9),fontSize: 20,)),
                          Text('$casos', style: TextStyle(color: Color(0xFFFF0231),fontSize: 20,)),
                          Divider(color: Colors.white,),
                          Text('Suspeitos: ', style: TextStyle(color: Color(0xFF0055B9),fontSize: 20,)),
                          Text('$suspeitos', style: TextStyle(color: Color(0xFFFF0231),fontSize: 20,)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Rejeitados: ', style: TextStyle(color: Color(0xFF0055B9),fontSize: 20,)),
                          Text('$rejeitados', style: TextStyle(color: Color(0xFFFF0231),fontSize: 20,)),
                          Divider(color: Colors.white,),
                          Text('Mortes: ', style: TextStyle(color: Color(0xFF0055B9),fontSize: 20,)),
                          Text('$mortes', style: TextStyle(color: Color(0xFFFF0231),fontSize: 20,)),
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.white,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Última atualização: ${df_d.format(tempDate)} às ${df_h.format(tempDate)}', style: TextStyle(color: Colors.black, fontSize: 15),)
                    ],
                  )
                ],
              ),
            ),
    );
  }

}
