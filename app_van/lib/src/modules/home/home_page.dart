import 'package:app_van/src/shared/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Size size;

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Van'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Olá,\n',
                style: TextStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Bellato',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                height: size.height * 0.6,
                width: size.width * 0.8,
                child: Card(
                  color: AppColors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          'Alunos:',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 150),
                          child: Text('CALMA QUE O RESTO EU JÁ FAÇO',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: AppColors.cian,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27.0),
                  side: const BorderSide(color: AppColors.cian),
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, '/Navigation'),
              child: const SizedBox(
                height: 80,
                width: 300,
                child: Center(
                  child: Text(
                    'Iniciar corrida',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
