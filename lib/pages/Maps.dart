import 'package:flutter/material.dart';
import 'package:enjoywithyourtour/model/asiaModel.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late List<AsiaModel> asiaModel;
  late MapShapeSource dataSource;

  @override
  void initState() {
    asiaModel = <AsiaModel>[
      AsiaModel('Thailand', 'Thailand', Colors.orange),
      AsiaModel('China', 'China', Colors.red),
      AsiaModel('Brunei', 'Brunei', Colors.amber),
      AsiaModel('Indonesia', 'Indonesia', Colors.indigoAccent),
      AsiaModel('Malaysia', 'Malaysia', Colors.lightGreen),
      AsiaModel('Philippines', 'Philippines', Colors.purple),
      AsiaModel('Singapore', 'Singapore', Colors.brown),
    ];

    dataSource = MapShapeSource.asset(
      'assets/data/asia.json',
      shapeDataField: 'name',
      dataCount: asiaModel.length,
      primaryValueMapper: (int index) => asiaModel[index].state,
      dataLabelMapper: (int index) => asiaModel[index].stateCode,
      shapeColorValueMapper: (int index) => asiaModel[index].color,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          child: SfMaps(
            layers: <MapShapeLayer>[
              MapShapeLayer(
                source: dataSource,
                showDataLabels: true,
                shapeTooltipBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(asiaModel[index].stateCode,
                        style: themeData.textTheme.caption!
                            .copyWith(color: themeData.colorScheme.surface)),
                  );
                },
                tooltipSettings: MapTooltipSettings(
                    color: Colors.grey[700],
                    strokeColor: Colors.white,
                    strokeWidth: 2),
                strokeColor: Colors.white,
                strokeWidth: 0.5,
                dataLabelSettings: MapDataLabelSettings(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: themeData.textTheme.caption!.fontSize)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
