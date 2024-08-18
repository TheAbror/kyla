import 'package:flutter/material.dart';
import 'package:kyla/presentation/home_page/home_model.dart';
import 'package:kyla/presentation/home_page/models/chart_models.dart';
import 'package:kyla/presentation/home_page/widgets/custom_app_bar.dart';
import 'package:kyla/presentation/home_page/widgets/custom_floating_button.dart';
import 'package:kyla/presentation/home_page/widgets/shop_item.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ShopModel> shops = allShops;

  late List<ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      ChartData('11:00', 2),
      ChartData('12:00', 5),
      ChartData('13:00', 0),
      ChartData('14:00', 0.4),
      ChartData('15:00', 4),
      ChartData('16:00', 2),
      ChartData('17:00', 5),
      ChartData('18:00', 0),
      ChartData('19:00', 0.4),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF21264A),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBar(),
                  SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    primaryYAxis: const NumericAxis(minimum: 0, maximum: 20, interval: 100),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<ChartData, String>>[
                      ColumnSeries<ChartData, String>(
                        dataSource: data,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        name: 'Gold',
                        color: const Color.fromRGBO(8, 142, 255, 1),
                      )
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: shops.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ShopsItem(
                        shops: shops,
                        index: index,
                      );
                    },
                  ),
                ],
              ),
            ),
            const CustomFloatingButton(),
          ],
        ),
      ),
    );
  }
}
