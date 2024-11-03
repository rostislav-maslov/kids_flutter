import 'package:ftl_flutter_uikit/atoms/icons/icons.dart';
import 'package:kids_app/pages/home_page/home_page.dart';
import 'package:kids_app/ui/layouts/base_bottom_tab/base_bottom_tab.dart';
import 'package:kids_app/pages/main_shell/main_shell.dart';

class HomeTab extends BaseBottomTab {
  HomeTab()
      : super(
            label: 'Главная',
            icon: FTIcons.area(),
            tabKey: MainShell.sShellKey,
            page: HomePage());
}
