import 'package:flutter/material.dart';
import 'package:mvvm_arch/utils/routes/routes.dart';
import 'package:mvvm_arch/utils/routes/routes_name.dart';
import 'package:mvvm_arch/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthViewModel(),
        ),
      ],
      child: const MaterialApp(
        title: 'MVVM',
        initialRoute: RoutesName.loginScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
