import 'package:daniheltest/util/common/barrel.dart';


/// The AppSCaffold was an approach to include the image splotches that
/// decorates the background and separate the decoration from the rest of the app and avoid unnecessary repetition, although the decoration hardly show up cause of the nature
/// of the image

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child, this.appBar});

  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,

          child: Image.asset(
            AppImages.bgBlotches.assetPath,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: AppColors.scaffoldBackground,

          appBar: appBar,
          body: child,
        ),
      ],
    );
  }
}
