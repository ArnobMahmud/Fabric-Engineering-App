import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/exam_page.dart';
import 'pages/home_page.dart';
import 'pages/lab_page.dart';
import 'pages/level1_page.dart';
import 'pages/level2_page.dart';
import 'pages/level3_page.dart';
import 'pages/level4_page.dart';
import 'pages/notice_page.dart';
import 'pages/resources_page.dart';
import 'provider/Exams/level1_term1_exam.dart';
import 'provider/Exams/level1_term2_exam.dart';
import 'provider/Exams/level2_term1_exam.dart';
import 'provider/Exams/level2_term2_exam.dart';
import 'provider/Exams/level3_term1_exam.dart';
import 'provider/Exams/level3_term2_exam.dart';
import 'provider/Exams/level4_term1_exam.dart';
import 'provider/Exams/level4_term2_exam.dart';
import 'provider/Labs/level1_term1_lab.dart';
import 'provider/Labs/level1_term2_lab.dart';
import 'provider/Labs/level2_term1_lab.dart';
import 'provider/Labs/level2_term2_lab.dart';
import 'provider/Labs/level3_term1_lab.dart';
import 'provider/Labs/level3_term2_lab.dart';
import 'provider/Labs/level4_term1_lab.dart';
import 'provider/Labs/level4_term2_lab.dart';
import 'provider/level1_term1_page.dart';
import 'provider/level1_term2_page.dart';
import 'provider/level2_term1_page.dart';
import 'provider/level2_term2_page.dart';
import 'provider/level3_term1_page.dart';
import 'provider/level3_term2_page.dart';
import 'provider/level4_term1_page.dart';
import 'provider/level4_term2_page.dart';
import 'resources/Level1/Term1/bce_rescources.dart';
import 'resources/Level1/Term1/chemistry1_resources.dart';
import 'resources/Level1/Term1/math1_resources.dart';
import 'resources/Level1/Term1/ntf_resources.dart';
import 'resources/Level1/Term1/physics1_resources.dart';
import 'resources/Level1/Term2/chemistry2_resources.dart';
import 'resources/Level1/Term2/cp_resources.dart';
import 'resources/Level1/Term2/em_resources.dart';
import 'resources/Level1/Term2/math2_resources.dart';
import 'resources/Level1/Term2/physics2_resources.dart';
import 'resources/Level1/Term2/pse_resources.dart';
import 'resources/Level2/Term1/fme_resources.dart';
import 'resources/Level2/Term1/fyt_resources.dart';
import 'resources/Level2/Term1/mmtf_resources.dart';
import 'resources/Level2/Term1/statistics_resources.dart';
import 'resources/Level2/Term1/wpp_resources.dart';
import 'resources/Level2/Term1/ym1_resources.dart';
import 'resources/Level2/Term2/am1_resources.dart';
import 'resources/Level2/Term2/feee_resources.dart';
import 'resources/Level2/Term2/fmkt_resources.dart';
import 'resources/Level2/Term2/tp_resources.dart';
import 'resources/Level2/Term2/wp1_resources.dart';
import 'resources/Level2/Term2/wvg1_resources.dart';
import 'resources/Level3/Term1/am2_resources.dart';
import 'resources/Level3/Term1/econ_resources.dart';
import 'resources/Level3/Term1/im_resources.dart';
import 'resources/Level3/Term1/knit1_resources.dart';
import 'resources/Level3/Term1/wp2_resources.dart';
import 'resources/Level3/Term1/ym2_resources.dart';
import 'resources/Level3/Term2/ace_resources.dart';
import 'resources/Level3/Term2/acfm_resources.dart';
import 'resources/Level3/Term2/acm_resources.dart';
import 'resources/Level3/Term2/fsd_resources.dart';
import 'resources/Level3/Term2/wvg2_resources.dart';
import 'resources/Level4/Term1/ftqc_resources.dart';
import 'resources/Level4/Term1/knit2_resources.dart';
import 'resources/Level4/Term1/sfp_resources.dart';
import 'resources/Level4/Term1/soc_resources.dart';
import 'resources/Level4/Term1/tam_resources.dart';
import 'resources/Level4/Term2/es.dart';
import 'resources/Level4/Term2/nwvn_resources.dart';
import 'resources/Level4/Term2/ppc.dart';
import 'resources/Level4/Term2/tt.dart';
import 'screen/splash.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );
    return MaterialApp(
      //theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      title: 'Fabric Engineering Application',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/res': (context) => const ResourcePage(),
        '/rot': (context) => const ExamPage(),
        '/lab': (context) => const LabPage(),
        '/level1': (context) => const Level1Page(),
        '/level2': (context) => const Level2Page(),
        '/level3': (context) => const Level3Page(),
        '/level4': (context) => const Level4Page(),
        '/l1t1': (context) => const Level1Term1Page(),
        '/l1t2': (context) => const Level1Term2Page(),
        '/l2t1': (context) => const Level2Term1Page(),
        '/l2t2': (context) => const Level2Term2Page(),
        '/l3t1': (context) => const Level3Term1Page(),
        '/l3t2': (context) => const Level3Term2Page(),
        '/l4t1': (context) => const Level4Term1Page(),
        '/l4t2': (context) => const Level4Term2Page(),
        '/phy1': (context) => const Physics1Resources(),
        '/chem1': (context) => const Chemistry1Resources(),
        '/math1': (context) => const Math1Resources(),
        '/ntf': (context) => const NTFResources(),
        '/bce': (context) => const BCEResources(),
        '/phy2': (context) => const Physics2Resources(),
        '/chem2': (context) => const Chemistry2Resources(),
        '/math2': (context) => const Math2Resources(),
        '/em': (context) => const EMResources(),
        '/cp': (context) => const CPResources(),
        '/pse': (context) => const PSEResources(),
        '/fyt': (context) => const FYTResources(),
        '/mmtf': (context) => const MMTFResources(),
        '/ym1': (context) => const YM1Resources(),
        '/fme': (context) => const FMEResources(),
        '/wpp': (context) => const WPPResources(),
        '/stat': (context) => const STATResources(),
        '/feee': (context) => const FEEEResources(),
        '/wv1': (context) => const Wvg1Resources(),
        '/tp': (context) => const TPResources(),
        '/fmkt': (context) => const FMktResources(),
        '/am1': (context) => const AM1Resources(),
        '/wp1': (context) => const WP1Resources(),
        '/ym2': (context) => const YM2Resources(),
        '/knit1': (context) => const Knit1Resources(),
        '/am2': (context) => const AM2Resources(),
        '/wp2': (context) => const WP2Resources(),
        '/econ': (context) => const EconResources(),
        '/im': (context) => const IMResources(),
        '/acfm': (context) => const ACFMResources(),
        '/ace': (context) => const ACEResources(),
        '/wv2': (context) => const Wvg2Resources(),
        '/fsd': (context) => const FSDResources(),
        '/acm': (context) => const ACMResources(),
        '/soc': (context) => const SocResources(),
        '/tam': (context) => const TAMResources(),
        '/knit2': (context) => const Knit2Resources(),
        '/ftqc': (context) => const FTQCResources(),
        '/sfp': (context) => const SFPResources(),
        '/ppc': (context) => const PPCResources(),
        '/nwvn': (context) => const NwvnResources(),
        '/tt': (context) => const TTResources(),
        '/es': (context) => const ESResources(),
        '/not': (context) => const NoticePage(),
        '/lab1': (context) => const Level1Term1Lab(),
        '/lab2': (context) => const Level1Term2Lab(),
        '/lab3': (context) => const Level2Term1Lab(),
        '/lab4': (context) => const Level2Term2Lab(),
        '/lab5': (context) => const Level3Term1Lab(),
        '/lab6': (context) => const Level3Term2Lab(),
        '/lab7': (context) => const Level4Term1Lab(),
        '/lab8': (context) => const Level4Term2Lab(),
        '/exam1': (context) => const Level1Term1Exam(),
        '/exam2': (context) => const Level1Term2Exam(),
        '/exam3': (context) => const Level2Term1Exam(),
        '/exam4': (context) => const Level2Term2Exam(),
        '/exam5': (context) => const Level3Term1Exam(),
        '/exam6': (context) => const Level3Term2Exam(),
        '/exam7': (context) => const Level4Term1Exam(),
        '/exam8': (context) => const Level4Term2Exam(),
      },
    );
  }
}
