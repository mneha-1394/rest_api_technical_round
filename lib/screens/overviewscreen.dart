import 'package:flutter/material.dart';
import 'package:rest_api/services/remote_services.dart';

import '../models/overview.dart';

class OverViewScreen extends StatefulWidget {
  static const routeName = '/';
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  Overview? overview;
  void getData() async {
    overview = (await RemoteService().getData())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(
          () {},
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Overview Screen"),
        ),
        body: overview == null
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                 
                  children: [
                     const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  Security"),
                      Text("${overview!.security} ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  Industry"),
                      Text("${overview!.industry}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [const Text("  Sector"), Text("${overview!.sector}  ")],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  MCAP"),
                      Text("${overview!.mcap}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [Text("  EVDateEnd"), Text("-           ")],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  BooKNavPerShare"),
                      Text("${overview!.bookNavPerShare}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  TTMPE"),
                      Text("${overview!.ttmpe} ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  TTMYearEnd"),
                      Text("${overview!.ttmYearEnd}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  Yield"),
                      Text("${overview!.welcomeYield}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  YearEnd"),
                      Text("${overview!.yearEnd}  " )
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  SectorSlug"),
                      Text("${overview!.sectorSlug} ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  IndustrySLug"),
                      Text("${overview!.industrySlug}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  SecuritySlug"),
                      Text("${overview!.securitySlug}  ")
                    ],
                  ),
                   const Padding(padding: EdgeInsets.all(5),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("  PEGRatio"),
                      Text("${overview!.pegRatio}  ")
                    ],
                  ),
                ]),
              ));
  }
}
