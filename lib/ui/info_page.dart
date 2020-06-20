import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Color(0xFFF4F4F4),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'O que é o Coronavírus?',
                      style:
                          TextStyle(color: Color(0xFF0055B9), fontSize: 22.0),
                    ),
                    subtitle: Text(
                      "    Coronavírus é uma família de vírus que causam infecções respiratórias. O novo agente do coronavírus foi descoberto em 31/12/19 após casos registrados na China. Provoca a doença chamada de coronavírus (COVID-19)."
                      " Os primeiros coronavírus humanos foram isolados pela primeira vez em 1937. No entanto, foi em 1965 que o vírus foi descrito como coronavírus, em decorrência do perfil na microscopia, parecendo uma coroa."
                      " A maioria das pessoas se infecta com os coronavírus comuns ao longo da vida, sendo as crianças pequenas mais propensas a se infectarem com o tipo mais comum do vírus. Os coronavírus mais comuns que infectam humanos são o alpha coronavírus 229E e NL63 e beta coronavírus OC43, HKU1.",
                      style: TextStyle(color: Color(0xFFFF0231)),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Quais são os sintomas?',
                      style:
                          TextStyle(color: Color(0xFF0055B9), fontSize: 22.0),
                    ),
                    subtitle: Text(
                      "    Os sintomas da COVID-19 podem variar de um simples resfriado até uma pneumonia severa. Sendo os sintomas mais comuns: "
                      "Tosse, Febre, Coriza, Dor de garganta, Dificuldade para respirar.",
                      style: TextStyle(color: Color(0xFFFF0231)),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Como se proteger?',
                      style:
                          TextStyle(color: Color(0xFF0055B9), fontSize: 22.0),
                    ),
                    subtitle: Text(
                      "    As recomendações de prevenção à COVID-19 são as seguintes: "
                      "Lave com frequência as mãos até a altura dos punhos, com água e sabão, ou então higienize com álcool em gel 70%. "
                      "Evite tocar olhos, nariz e boca com as mãos não lavadas. "
                      "Ao tocar, lave sempre as mãos como já indicado. "
                      "Mantenha uma distância mínima de cerca de 2 metros de qualquer pessoa tossindo ou espirrando. "
                      "Evite abraços, beijos e apertos de mãos. Adote um comportamento amigável sem contato físico, mas sempre com um sorriso no rosto. "
                      "Higienize com frequência o celular e os brinquedos das crianças. "
                      "Não compartilhe objetos de uso pessoal, como talheres, toalhas, pratos e copos. "
                      "Mantenha os ambientes limpos e bem ventilados. "
                      "Evite circulação desnecessária nas ruas, estádios, teatros, shoppings, shows, cinemas e igrejas. Se puder, fique em casa. "
                      "Se estiver doente, evite contato físico com outras pessoas, principalmente idosos e doentes crônicos, e fique em casa até melhorar. "
                      "Durma bem e tenha uma alimentação saudável. "
                      "Utilize máscaras caseiras ou artesanais feitas de tecido em situações de saída de sua residência. ",
                      style: TextStyle(color: Color(0xFFFF0231)),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Como se transmite?',
                      style:
                          TextStyle(color: Color(0xFF0055B9), fontSize: 22.0),
                    ),
                    subtitle: Text(
                      "   A transmissão acontece de uma pessoa doente para outra ou por contato próximo por meio de: "
                      "Toque do aperto de mão; Gotículas de saliva; Espirro; Tosse; Catarro;"
                      " Objetos ou superfícies contaminadas, como celulares, mesas, maçanetas, brinquedos, teclados de computador, etc.",
                      style: TextStyle(color: Color(0xFFFF0231)),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
