import 'package:flutter/Material.dart';
import 'package:wanaka_data_manager/src/home/home_item_details_view.dart';
import 'package:wanaka_data_manager/src/home/home_item_list_view.dart';
import 'package:wanaka_data_manager/src/login_form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginFormValidation(),
        '/home': (context) => HomeItemListView(),
        '/homeitemdetails': (context) => HomeItemDetailsView(),
      },
    );
  }
}