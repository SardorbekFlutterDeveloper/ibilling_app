import 'package:ibilling/core/files_path.dart';

extension ForContext on BuildContext {
  // Returns same as MediaQuery.of(context)
  MediaQueryData get mq => MediaQuery.of(this);

  // Returns same as MediaQuery.of(context).size.width
  double get w => mq.size.width;

  double get h => mq.size.height;

  double width(double v) => (v / 375) * w;

  double height(double v) => (v / 815.0) * h;
}
