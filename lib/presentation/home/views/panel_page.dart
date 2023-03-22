import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../widget/custom_drawer.dart';
import '../../widget/custom_pageview_widget.dart';

class PanelPage extends StatefulWidget {
  const PanelPage({super.key});

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  // final List<ChartData> chartData = [

  // ];
  late TooltipBehavior? _tooltipBehavior;
  late List<ChartData> data;
  // late List<_ChartData> data1;

  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      ChartData('Bülent Ecevit Üniversitesi', 10),
      ChartData('Balıkesir Üniversitesi', 9),
      ChartData('Akdeniz Üniversitesi', 10),
      ChartData('Adnan Menderes Üniversitesi', 10),
      ChartData('Düzce Üniversitesi', 10),
      ChartData('K.Maraş Sütçü İmam Üniv.', 10),
      ChartData('Çanakkale 18 Mart Üniv.', 10),
      ChartData('Uludağ Üniversitesi', 10),
      ChartData('19 Mayıs Üniversitesi', 10),
    ];
    // data = [
    //   _ChartData('Osman Çebin', 12),
    //   _ChartData('Mahmut Polat', 20),
    //   _ChartData('Nur Çelik', 15),
    //   _ChartData('Rabia Çimen', 25),
    // ];
    // data1 = [
    //   _ChartData('Osman Çebin', 85),
    //   _ChartData('Mahmut Polat', 45),
    //   _ChartData('Nur Çelik', 35),
    //   _ChartData('Rabia Çimen', 10),
    // ];

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: NavBar(),
      bottomNavigationBar: Container(
        height: 30,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hoşgeldiniz Osman ÇEBİN"),
              Text("© Mia Teknoloji",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          color: Colors.grey[350],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _scaffoldState.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu)),
        title: Text('HBYS Destek Sistemi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Tüm Gelen İstek İstatistikleri",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700),
                textAlign: TextAlign.start,
              ),
            ),
            CustomPageViewWidget(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Son Bir Haftalık Kuruma Göre İstek Sayısı İstatistiği",
                        style: TextStyle(
                            fontSize: 16.5, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SfCartesianChart(
                        enableMultiSelection: true,
                        primaryXAxis: CategoryAxis(),
                        primaryYAxis:
                            NumericAxis(minimum: 0, maximum: 60, interval: 5),
                        tooltipBehavior: _tooltip,
                        series: <ChartSeries<ChartData, String>>[
                          BarSeries<ChartData, String>(
                              dataSource: data,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              name: 'Gold',
                              color: Color.fromRGBO(115, 128, 138, 1)),
                          // BarSeries<_ChartData, String>(
                          //     dataSource: data,
                          //     xValueMapper: (_ChartData data, _) => data.x,
                          //     yValueMapper: (_ChartData data, _) => data.y,
                          //     name: 'Gold',
                          //     color: Colors.red)
                        ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _ChartData {
//   _ChartData(this.x, this.y);

//   final String x;
//   final double y;
// }

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
