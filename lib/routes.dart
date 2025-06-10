import 'nav.dart';
import 'pages/telaatendimento/telaatendimento_widget.dart';

import 'pages/telacadastro/telacadastro_widget.dart';
import 'pages/telalogin/telalogin_widget.dart';

List<FFRoute> routes = [
  FFRoute(
    name: '_initialize',
    path: '/',
    builder: (context, _) => const TelaloginWidget(),
    // builder: (context, _) => AppStateNotifier.instance.loggedIn ? const NavBarPage() : const LoginWidget(),
  ),
  FFRoute(
    name: TelaloginWidget.routeName,
    path: TelaloginWidget.routePath,
    builder: (context, _) => const TelaloginWidget(),
  ),
  FFRoute(
    name: TelaatendimentoWidget.routeName,
    path: TelaatendimentoWidget.routePath,
    builder: (context, _) => const TelaatendimentoWidget(),
  ),
  FFRoute(
    name: TelacadastroWidget.routeName,
    path: TelacadastroWidget.routePath,
    builder: (context, _) => const TelacadastroWidget(),
  ),
];
