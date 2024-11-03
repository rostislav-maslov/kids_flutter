import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/commons/route_url.dart';

class LoadWidget extends StatefulWidget {
  const LoadWidget({super.key});

  @override
  State<LoadWidget> createState() => _LoadWidgetState();
}

class _LoadWidgetState extends State<LoadWidget> {
  late String _url;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(Duration(seconds: 1), () {
        if (mounted) {
          context.go(RouteUrl.instance.auth.absolute);
        }
      });
      // AuthState authState = Provider.of<AuthState>(context, listen: false);
      // _url = GoRouterState.of(context).uri.path;
      //
      // if (authState.currentHost == null) {
      //   startAuthorization();
      // } else {
      //   var hostAvailable =
      //       await authState.refreshToken(authState.currentHost!);
      //   if (hostAvailable) {
      //     if (context.mounted) {
      //       _onGoPage(
      //         context,
      //         false,
      //       );
      //     }
      //   } else {
      //     startAuthorization();
      //   }
      // }
    });
  }

  Future<void> startAuthorization() async {
    // Authorization auth = Authorization.instance();
    // auth.show(
    //     context, null, (_) => _onGoPage(context, true), _onError, _onCancel);
  }

  void _onGoPage(BuildContext context, bool isRedirection) {
    // TODO Какой-то костыль получился для исключений
    List<String> validUrls = [
      '/',
      '/auth',
      '/auth/company',
      '/auth/company/login',
      '/auth/company/sms',
      '/choice-company',
      '/choice-company/login',
      '/choice-company/login/pin-code',
      '/short-auth',
      '/short-auth/pin-code',
      '/welcome',
      '/welcome/choice-company',
      '/welcome/choice-company/login',
      '/welcome/choice-name/login/pin-code',
      '/welcome/choice-company/coice-name',
      '/welcome/choice-name/login',
      '/welcome/choice-name/login/pin-code',
      '/welcome/choice-name',
      '/welcome/choice-name/login',
      '/welcome/choice-name/login/pin-code',
      '/waiting',
    ];

    if (validUrls.contains(_url)) {
      _onPressedGoHomeButton(context);
    } else {
      if (isRedirection) {
        GoRouter.of(context).go(_url);
      }
    }
  }

  void _onPressedGoToButton(BuildContext context) {}

  void _onPressedGoAuthButton(BuildContext context) {}

  void _onSuccess(BuildContext context) {}

  void _onError(BuildContext context) {}

  void _onCancel(BuildContext context) {}

  void _onPressedGoHomeButton(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(child: CircularProgressIndicator()),
    ));
  }
}
