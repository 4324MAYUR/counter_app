import 'package:counter_app/views/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text("HOME PAGE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,width: 3,),
                  borderRadius: const BorderRadius.all(Radius.circular(20),),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(4, 5),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                ),
                child: Center(
                  child: Text(
                    "${context
                        .watch<CounterProvider>().i}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                build3DButton(context, "+", () {
                  (context).read<CounterProvider>().increment();
                },
                ),
                build3DButton(context, "-", () {
                  (context).read<CounterProvider>().decrement();
                },
                ),
                build3DButton(context, "2X", () {
                  (context).read<CounterProvider>().twoX();
                },
                ),
                build3DButton(context, "3X", () {
                  (context).read<CounterProvider>().threeX();
                },
                ),
                build3DButton(context, "5X", () {
                  (context).read<CounterProvider>().fiveX();
                },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().clear();
        },
        child: const Icon(Icons.refresh),
        autofocus: true,
        focusColor: Colors.white,
        foregroundColor: Colors.red,
        hoverColor: Colors.black,
      ),
    );
  }

  // function in build3Button

  Widget build3DButton(BuildContext context, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2,),
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              offset: const Offset(6, 6),
              blurRadius: 6,
             ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-2, -3),
              blurRadius: 6,
             ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

