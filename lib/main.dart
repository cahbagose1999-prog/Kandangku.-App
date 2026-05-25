import 'package:flutter/material.dart';

void main() {
  runApp(const KandangKuApp());
}

class KandangKuApp extends StatelessWidget {
  const KandangKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KandangKu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dataMasuk = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KandangKu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "KandangKu Siap Jalan",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text("Data: $dataMasuk"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dataMasuk++;
                });
              },
              child: const Text("Tambah Data"),
            )
          ],
        ),
      ),
    );
  }
}
