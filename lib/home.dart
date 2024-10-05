import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:health/components/calendar.dart';
import 'package:health/components/urgenceBtn.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Santé',),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LucideIcons.bell_dot))
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Bonjour Axel,', style: Theme.of(context).textTheme.titleLarge,),

              const SizedBox(height: 20.0,),

              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const CalendarWidget(),
              ),

              const SizedBox(height: 10.0,),

              urgenceBtn(context),
            ],
          ),
        ),
      ),
    );
  }
}