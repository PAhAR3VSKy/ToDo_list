import 'package:todo_list/config/app_config.dart';
import 'package:todo_list/config/debug_options.dart';
import 'package:todo_list/config/env/build_types.dart';
import 'package:todo_list/config/env/environment.dart';
import 'package:todo_list/config/urls.dart';
import 'package:todo_list/runner.dart';

void main(){
  Environment.init(
    buildType: BuildType.debug,
    config: AppConfig(
      urlType: UrlType.test,
      debugOptions: DebugOptions(
        debugShowCheckedModeBanner: true,
      ),
    ),
  );

  run();
}