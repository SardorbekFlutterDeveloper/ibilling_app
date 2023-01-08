import '../core/files_path.dart';

class ContractsW extends StatelessWidget {
  final int lastInvoice, invoiceNumber, contractNumber, status;
  final String name, data;
  final double amount;

  const ContractsW({
    Key? key,
    required this.contractNumber,
    required this.name,
    required this.amount,
    required this.data,
    required this.invoiceNumber,
    required this.lastInvoice,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148.h,
    );
  }
}
