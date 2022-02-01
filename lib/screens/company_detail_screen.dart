import 'package:flutter/material.dart';
import '../controllers/company_controller.dart';
import '../widgets/company_detail.dart';
class CompanyDetailScreen extends StatefulWidget {
  @override
  State<CompanyDetailScreen> createState() => _CompanyDetailScreenState();
}
class _CompanyDetailScreenState extends State<CompanyDetailScreen> with SingleTickerProviderStateMixin{
  final companyController=CompanyController.companyGetter;
  AnimationController? _controller;
  @override
  void initState() {
    _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
    _controller!.forward();
    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CompanyDetail(
        controller: _controller,company: companyController.object,
      ),
    );
  }
}
