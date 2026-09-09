import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'global_variables.dart';
void main() {
  runApp(const MyApp());
}

// Provider
// ChangeNotifierProvider
// FutureProvider
// StreamProvider

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => CartProvider()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: .fromSeed(
              seedColor: Color.fromRGBO(254, 206, 1, 1),
            primary: Color.fromRGBO(254, 206, 1, 1),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            titleLarge: TextStyle(
            fontSize: 32,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
            useMaterial3: true,
        ),
        home: Provider(
          create: (context) => 'Hello!',
          child: const HomePage(),
        ),
        // home: ProductDetailsPage(
        //   product: products[0],
        // ),
      ),
    );
  }
}


