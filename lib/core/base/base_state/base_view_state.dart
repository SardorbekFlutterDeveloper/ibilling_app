import 'package:ibilling/core/files_path.dart';

class BaseViewState extends State<BaseView> {
  StreamSubscription<ConnectivityResult>? subscription;
  ConnectivityResult? internetStatus;

  @override
  void initState() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      internetStatus = result;
      setState(() {});
    });
    if (widget.onModelReady != null) widget.onModelReady!(widget.viewModal);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return internetStatus == ConnectivityResult.none
        ? const Scaffold()
        : widget.onPageBuilder(context, widget.viewModal);
  }

  @override
  void dispose() {
    if (widget.onDispose != null) widget.onDispose!();
    subscription!.cancel();
    super.dispose();
  }
}
