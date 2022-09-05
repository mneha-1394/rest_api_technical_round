import 'package:flutter/material.dart';
import '../models/technical.dart';
import '../services/remote_services.dart';

class TechnicalScreen extends StatefulWidget {
  static const routeName = '/technical';
  const TechnicalScreen({Key? key}) : super(key: key);

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  @override
  void initState() {
    super.initState();
    getinfo();
  }

  List<Technical>? technical;
 
  void getinfo() async {
    technical = (await RemoteService().getinfo());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(
          () {},
        ));
        
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Technical Screen"),
        ),
        body: technical == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: technical!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            technical![index].chartPeriodCode,
                            style: const TextStyle(fontSize: 15),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 400,
                            height: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100))),
                            child: FractionallySizedBox(
                              widthFactor:0.7,
                                child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                              ),
                            )),
                          ),
                          Text(
                            "${technical![index].changePercent.truncateToDouble()}%",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                      )
                    ],
                  );
                },
              ));
  }
}
