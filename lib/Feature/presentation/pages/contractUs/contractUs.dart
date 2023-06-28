

import 'package:flutter/material.dart';

import '../../widgets/text_widget.dart';


class ContractUs extends StatelessWidget {
  const ContractUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
      decoration: const BoxDecoration(
        color: Colors.teal
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 80, width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0)
                ),
                child: Image.asset('assets/logo.png',fit: BoxFit.fitWidth,),
              ),
              const SizedBox(height: 60,),
              const TextLtdWidget(
                title: "Cycling on Campus,\nDaffodil International University,\nDaffodil Smart City,\nAshuliya,\nDhaka, Bangladesh",line: 10,size: 15,color: Colors.white,weight: FontWeight.w400,
              ),
              const SizedBox(height: 20,),
            ],
          ),
          const Spacer(flex: 2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:   const [

              TextLtdWidget(
                title:'Useful Links',size: 18,color: Colors.white,weight: FontWeight.w400,
              ),
              SizedBox(height: 40,),
              TextLtdWidget(
                title:'Contact Us',size: 16,color: Colors.white,
              ),
              SizedBox(height: 10,),
              TextLtdWidget(
                title:'Insurance Cover',size: 15,color: Colors.white,weight: FontWeight.w400,
              ),
              SizedBox(height: 10,),
              TextLtdWidget(
                title:'Cookies Setting',size: 15,color: Colors.white,weight: FontWeight.w400,
              ),
              SizedBox(height: 10,),
              TextLtdWidget(
                title:'Cookie Policy',size: 15,color: Colors.white,weight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
