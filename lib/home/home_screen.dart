import 'package:flutter/material.dart';
import 'package:jubilant/home/model/company_stats.dart';
import 'package:jubilant/home/utils/colors.dart';
import 'package:jubilant/home/utils/constants.dart';
import 'package:jubilant/home/utils/text_styles.dart';
import 'package:jubilant/home/views/appbar.dart';
import 'package:jubilant/home/views/chips/matrics_chip.dart';
import 'package:jubilant/home/views/docs/document_page.dart';
import 'package:jubilant/home/views/highlights.dart';
import 'package:jubilant/home/views/org_info.dart';
import 'package:jubilant/home/views/separator.dart';
import 'package:jubilant/home/views/stats/stats_table.dart';
import 'package:jubilant/home/views/support_widget.dart';

import 'views/company_icon.dart';

class HomeScreen extends StatelessWidget {
  List<List<CompanyStats>> orgStats = [
    [
      CompanyStats(
          title: 'MIN INVT',
          valuePrefix: rupeeSymbol,
          value: '1',
          valueLabel: 'Lakh'),
      CompanyStats(
          title: 'TENURE', valuePrefix: '', value: '61', valueLabel: 'days')
    ],
    [
      CompanyStats(
          title: 'NET YIELD', valuePrefix: '', value: '13.23', valueLabel: '%'),
      CompanyStats(
          title: 'RAISED', valuePrefix: '', value: '70', valueLabel: '%'),
    ]
  ];

  List<List<CompanyStats>> stats = [
    [
      CompanyStats(
          title: 'ACTIVE DEALS',
          valuePrefix: null,
          value: '6',
          valueLabel: 'of 18'),
      CompanyStats(
          title: 'RAISED',
          valuePrefix: rupeeSymbol,
          value: '6.94',
          valueLabel: 'Cr'),
    ],
    [
      CompanyStats(
          title: 'MATURED DEALS',
          valuePrefix: null,
          value: '12',
          valueLabel: 'of 18'),
      CompanyStats(
          title: 'ON TIME PAYMENT',
          valuePrefix: rupeeSymbol,
          value: '100',
          valueLabel: '%'),
    ]
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FILLED',
                  style: secondaryLabelSmallTextStyle(context),
                ),
                Text(
                  '30%',
                  style: primaryBodyMediumTextStyle(context),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pay');
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: kPrimaryButtonColor),
              child: Text(
                'Tap to Invest',
                style: secondaryBodySmallTextStyle(context)
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AgrizyAppBar(title: "Back to Deals"),
              const CompanyLogo(),
              const OrgInfo(),
              StatsTable(stats: orgStats),
              const Separator(),
              SupportWidget(title: 'Clients', subTitles: const [
                'images/ic_client_logo.png',
                'images/ic_client_logo.png',
                'images/ic_client_logo.png'
              ]),
              SupportWidget(title: 'Backed By', subTitles: const [
                'images/ic_client_logo.png',
                'images/ic_client_logo.png',
                'images/ic_client_logo.png'
              ]),
              const Separator(),
              const HighLights(),
              const Separator(),
              MetricsChipGroup(),
              StatsTable(stats: stats),
              const Separator(),
              const DocumentsView()
            ],
          ),
        ),
      ),
    );
  }
}
