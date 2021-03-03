import 'package:appbase_themedarklight/views/screens/about-app/about-app.view.dart';
import 'package:appbase_themedarklight/views/screens/account-user/login/login.view.dart';
import 'package:appbase_themedarklight/views/screens/account-user/recover-password/recover-password.view.dart';
import 'package:appbase_themedarklight/views/screens/account-user/register/register-add.view.dart';
import 'package:appbase_themedarklight/views/screens/account-user/register/register-full.view.dart';
import 'package:appbase_themedarklight/views/screens/account-user/register/register.view.dart';
import 'package:appbase_themedarklight/views/screens/alerts/alerts.view.dart';
import 'package:appbase_themedarklight/views/screens/chat/chat.view.dart';
import 'package:appbase_themedarklight/views/screens/financial-loan/financial-loan-finish.view.dart';
import 'package:appbase_themedarklight/views/screens/financial-loan/financial-loan2.view.dart';
import 'package:appbase_themedarklight/views/screens/financial-loan/financial-loan3.view.dart';
import 'package:appbase_themedarklight/views/screens/messages/messages.view.dart';
import 'package:appbase_themedarklight/views/screens/profile-user/profile.view.dart';
import 'package:appbase_themedarklight/views/screens/settings/settigns.view.dart';
import 'package:appbase_themedarklight/views/screens/splash-screen/splash.view.dart';
import 'package:appbase_themedarklight/views/screens/tabs.control.dart';
import 'package:appbase_themedarklight/views/screens/terms/terms-and-conditions.view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String home = "/home";
  static const String salesReport = "/salReport";
  static const String shoppingCart = "/shoppingCart";
  static const String shoppingCheckout = "/shoppingCheckout";
  static const String messages = "/messages";
  static const String chat = "/chat";
  static const String termsCond = "/termsCond";
  static const String aboutApp = "/aboutApp";
  static const String alerts = "/alerts";
  //static const String financialLoan1 = "/financialLoan1";
  static const String financialLoan2 = "/financialLoan2";
  static const String financialLoan3 = "/financialLoan3";
  static const String financialLoanFinish = "/financialLoanFinish";
  static const String register = "/register";
  static const String registerAdd = "/registerAdd";
  static const String login = "/login";
  static const String splash = "/splash";
  static const String settingsView = "/settingsView";
  static const String recoverPassword = "/recoverPassword";
  static const String registerFull = "/registerFull";
  static const String profile = "/profile";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => TabsControl());
      case home:
        return MaterialPageRoute(builder: (_) => TabsControl());
      case messages:
        return MaterialPageRoute(builder: (_) => MessageView());
      case chat:
        return MaterialPageRoute(builder: (_) => ChatView());
      case termsCond:
        return MaterialPageRoute(builder: (_) => TermsOfConditionsView());
      case aboutApp:
        return MaterialPageRoute(builder: (_) => AboutView());
      case alerts:
        return MaterialPageRoute(builder: (_) => AlertsView());
      /*case financialLoan1:
        return MaterialPageRoute(builder: (_) => FinancialLoan1View());*/
      case financialLoan2:
        return MaterialPageRoute(builder: (_) => FinancialLoan2View());
      case financialLoan3:
        return MaterialPageRoute(builder: (_) => FinancialLoan3View());
      case financialLoanFinish:
        return MaterialPageRoute(builder: (_) => FinancialLoanFinishView());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case registerAdd:
        return MaterialPageRoute(builder: (_) => RegisterAddView());
      case login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case settingsView:
        return MaterialPageRoute(builder: (_) => SettingsView());
      case recoverPassword:
        return MaterialPageRoute(builder: (_) => RecoverPassView());
      case registerFull:
        return MaterialPageRoute(builder: (_) => RegisterFullView());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfileView());

      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
