import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Define a Deep Sea color palette
    // Primary Seed Color: A profound, dark navy blue
    const Color deepSeaSeedColor = Color(0xFF0D47A1); // Deep Indigo/Navy

    // Secondary colors for the color scheme
    const Color primaryDeepSea = Color(0xFF1976D2);   // Standard Dark Blue
    const Color secondaryDeepSea = Color(0xFF00ACC1); // Vibrant Cyan/Teal for accents
    const Color backgroundDeepSea = Color(0xFFBBDEFB); // Light, airy blue for the body background

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Use the defined deep sea color for the seed
        colorScheme: ColorScheme.fromSeed(
          seedColor: deepSeaSeedColor,
          primary: primaryDeepSea,
          secondary: secondaryDeepSea,
          background: backgroundDeepSea,
          surface: Colors.white, // Standard white for card-like surfaces
          brightness: Brightness.light,
        ),
        // Set the app bar background to a deep blue
        appBarTheme: const AppBarTheme(
          backgroundColor: deepSeaSeedColor, // The darkest blue for the bar
          foregroundColor: Colors.white, // Title text in white
        ),
        // Set the FloatingActionButton color explicitly for a vibrant accent (surface shimmer)
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: secondaryDeepSea, // Cyan/Teal accent
          foregroundColor: Colors.white, // White icon color
        ),
        // Set a darker text color for contrast against the light background
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF1565C0)), // Darker blue text
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IT 3120 Lab 6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold background is now the light blue backgroundDeepSea
      appBar: AppBar(
        // The AppBar color is set in the AppBarTheme above
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              // This text uses the default text style or the one set in bodyMedium
            ),
            Text(
              '$_counter',
              // The counter text color is derived from the ColorScheme's primary color
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  }