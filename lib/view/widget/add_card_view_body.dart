import 'package:addcardpage/cubits/mangeaddcardcubit/mangeaddcardcubit_cubit.dart';
import 'package:addcardpage/helper/input_formater.dart';
import 'package:addcardpage/view/widget/custom_add_card_button.dart';
import 'package:addcardpage/view/widget/custom_input_text_feild.dart';
import 'package:addcardpage/view/widget/custom_swipe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddcardViewBody extends StatelessWidget {
  const AddcardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController cardNumberController = TextEditingController();
    TextEditingController expiryController = TextEditingController();
    TextEditingController cvvController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    void updateContainerColor(BuildContext context) {
      BlocProvider.of<MangeaddcardcubitCubit>(context).updateContainerColor(
        name: nameController.text,
        cardNumber: cardNumberController.text,
        expiry: expiryController.text,
        cvv: cvvController.text,
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffEEF0F3),
      appBar: AppBar(
        toolbarHeight: 75,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          iconSize: 24,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff0F4B83),
          ),
        ),
        title: const Text(
          "Add New Card",
          style: TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 24,
            height: 28,
            fontWeight: FontWeight.w500,
            color: Color(0xff232440),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomInputTextfeild(
                controller: nameController,
                onChanged: (value) {
                  updateContainerColor(context);
                },
                keyboardType: TextInputType.name,
                title: 'Card name',
                hint: 'Enter your card name',
              ),
              CustomInputTextfeild(
                controller: cardNumberController,
                onChanged: (value) {
                  updateContainerColor(context);
                },
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  GenericFormatter(digits: [4, 8, 12], spliter: "  "),
                ],
                title: 'Card Number',
                hint: 'Enter your card number',
              ),
              CustomInputTextfeild(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                  GenericFormatter(digits: [2], spliter: "/")
                ],
                controller: expiryController,
                onChanged: (value) {
                  updateContainerColor(context);
                },
                title: 'Expired',
                hint: 'MM/YY',
              ),
              CustomInputTextfeild(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3)
                ],
                controller: cvvController,
                onChanged: (value) {
                  updateContainerColor(context);
                },
                title: 'CVV',
                hint: 'Enter your card cvv',
              ),
              const CustomswipeButton(),
              BlocBuilder<MangeaddcardcubitCubit, MangeaddcardcubitState>(
                builder: (context, state) {
                  return state is Mangeaddcardcubitfill
                      ? const CustomAddcardButton(
                          textColor: Colors.white,
                          buttonColor: Color(0xff0F4B83))
                      : const CustomAddcardButton(
                          textColor: Color(0xff7F7F92),
                          buttonColor: Colors.white);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
