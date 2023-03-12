// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class PanelPage extends StatefulWidget {
//   const PanelPage({super.key});

//   @override
//   State<PanelPage> createState() => _PanelPageState();
// }

// class _PanelPageState extends State<PanelPage> {
//   final List<ChartData> chartData = [
//     ChartData('Bülent Ecevit Üniversitesi', 10),
//     ChartData('Balıkesir Üniversitesi', 9),
//     ChartData('Akdeniz Üniversitesi', 10),
//     ChartData('Adnan Menderes Üniversitesi', 10),
//     ChartData('Düzce Üniversitesi', 10),
//     ChartData('K.Maraş Sütçü İmam Üniv.', 10),
//     ChartData('Çanakkale 18 Mart Üniv.', 10),
//     ChartData('Uludağ Üniversitesi', 10),
//     ChartData('19 Mayıs Üniversitesi', 10),
//   ];
//   late TooltipBehavior? _tooltipBehavior;
//   late List<_ChartData> data;
//   late List<_ChartData> data1;

//   late TooltipBehavior _tooltip;
//   @override
//   void initState() {
//     data = [
//       _ChartData('Osman Çebin', 12),
//       _ChartData('Mahmut Polat', 20),
//       _ChartData('Nur Çelik', 15),
//       _ChartData('Rabia Çimen', 25),
//     ];
//     data1 = [
//       _ChartData('Osman Çebin', 85),
//       _ChartData('Mahmut Polat', 45),
//       _ChartData('Nur Çelik', 35),
//       _ChartData('Rabia Çimen', 10),
//     ];

//     _tooltip = TooltipBehavior(enable: true);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           SfCartesianChart(
//               enableMultiSelection: true,
//               primaryXAxis: CategoryAxis(),
//               primaryYAxis: NumericAxis(minimum: 0, maximum: 60, interval: 10),
//               tooltipBehavior: _tooltip,
//               series: <ChartSeries<_ChartData, String>>[
//                 BarSeries<_ChartData, String>(
//                     dataSource: data1,
//                     xValueMapper: (_ChartData data, _) => data.x,
//                     yValueMapper: (_ChartData data, _) => data.y,
//                     name: 'Gold',
//                     color: Color.fromRGBO(8, 142, 255, 1)),
//                 BarSeries<_ChartData, String>(
//                     dataSource: data,
//                     xValueMapper: (_ChartData data, _) => data.x,
//                     yValueMapper: (_ChartData data, _) => data.y,
//                     name: 'Gold',
//                     color: Colors.red)
//               ]),
//           SfCartesianChart(series: <ChartSeries>[
//             SplineSeries<ChartData, String>(
//               dataSource: chartData,
//               // Type of spline
//               splineType: SplineType.cardinal,
//               cardinalSplineTension: 0.9,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y,
//             )
//           ]),
//         ],
//       ),
//     );
//   }
// }

// class _ChartData {
//   _ChartData(this.x, this.y);

//   final String x;
//   final double y;
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double y;
// }
