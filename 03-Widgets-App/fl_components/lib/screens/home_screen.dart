import 'package:flutter/material.dart';
import '../router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon( menuOptions[index].icon, color: AppTheme.primary, ),
                  title: Text(menuOptions[index].name),
                  onTap: () {

                    // * Manera poc opitma de enrutar cap a una screen
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen(),
                    // );
                    // Navigator.push(context, route);

                  // * Manera més optima per enrutar cap a una screen
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: ( _ , __ ) => const Divider(),
            itemCount: menuOptions.length
          )
      );
  }
}
