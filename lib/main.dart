import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/level1_page.dart';
import 'pages/level2_page.dart';
import 'pages/level3_page.dart';
import 'pages/level4_page.dart';
import 'provider/level1_term1_page.dart';
import 'provider/level1_term2_page.dart';
import 'provider/level2_term1_page.dart';
import 'provider/level2_term2_page.dart';
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
import 'resources/Level2/Term2/wvg_resources.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fabric Engineering Application',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/level1': (context) => const Level1Page(),
        '/level2': (context) => const Level2Page(),
        '/level3': (context) => const Level3Page(),
        '/level4': (context) => const Level4Page(),
        '/l1t1': (context) => const Level1Term1Page(),
        '/l1t2': (context) => const Level1Term2Page(),
        '/l2t1': (context) => const Level2Term1Page(),
        '/l2t2': (context) => const Level2Term2Page(),
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
      },
    );
  }
}
