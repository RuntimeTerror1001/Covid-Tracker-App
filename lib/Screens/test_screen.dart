import 'package:covid_app2/Components/cont_box.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/Components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TestScreen extends StatefulWidget {
  static const String id = 'test_screen';
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          HeadCont(
            image: 'assets/icons/testdoc.svg',
            text: 'The Tests for \nCOVID-19',
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          15.heightBox,
          TitleText(text: 'Tests'),
          10.heightBox,
          ContBox2(
            head: 'PCR(Polymerase Chain Reaction) Tests\n\n',
            text:
                'PCR tests are used to directly screen for the presence of viral RNA, which will be detectable in the body before antibodies form or symptoms of the disease are present. The tests can tell whether or not someone has the virus very early on in their illness.',
          ),
          10.heightBox,
          ContBox2(
            head: 'LF(Lateral FLow) Tests\n\n ',
            text:
                'LFTs are similar to PCR tests, in that they’re both types of antigen test, designed to pick up active Covid-19 infection rather than antibodies to the disease.The major benefit of LFTs over PCRs is that they do not need to be sent away for confirmation, and instead provide results within 15 to 30 minutes. However, what they gain in speed they sacrifice in accuracy.',
          ),
          10.heightBox,
          ContBox2(
            head: 'Antibody Tests\n\n',
            text:
                'An antibody test tells us what proportion of the population has been infected. It won’t tell you who is infected, because the antibodies are generated after a week or two, after which time the virus should have been cleared from the system. But it tells you who’s been infected and who should be immune to the virus.',
          ),
          20.heightBox,
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}
