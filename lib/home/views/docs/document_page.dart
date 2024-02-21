import 'package:flutter/material.dart';
import 'package:jubilant/home/views/document_page.dart';
import 'package:jubilant/home/views/section_title.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 50),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Documents'),
          DocumentPage(
              iconPath: 'images/ic_document.png',
              title: 'Invoice Discounting Contract',
              subtitle:
                  'All the legalese surrounding this deal and how it relates to you.'),
          DocumentPage(
              iconPath: 'images/ic_company_pitch_deck.png',
              title: 'Company Pitch Deck',
              subtitle:
                  'Read more about the company and see how they pitch to investors.'),
        ],
      ),
    );
  }
}
