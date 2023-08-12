part of '../signup_barrel.dart';

class _SignupView extends StatelessView<SignupScreen, SignupController> {
  const _SignupView(SignupController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(PeymoAssets.close)),
                    reusableText(PeymoString.singup,
                        style: appFontStyle(30, FontWeight.w600,
                            color: AppStyle.black)),
                    reusableText(PeymoString.login,
                        style: appFontStyle(16, FontWeight.w500,
                            color: AppStyle.black))
                  ],
                ),
                Column(
                  children: [
                    PeymoInputField(
                      peymoController: controller.nameController,
                      textType: TextInputType.name,
                    ),
                    10.sbH,
                    PeymoInputField(
                        peymoController: controller.nameController,
                        textType: TextInputType.name),
                    10.sbH,
                    PeymoInputField(
                        peymoController: controller.nameController,
                        textType: TextInputType.name),
                    20.sbH,
                    Row(
                      children: [
                        Checkbox(
                          fillColor:
                              const MaterialStatePropertyAll(AppStyle.grey),
                          value: controller.isCheck,
                          onChanged: (value) {},
                        ),
                        reusableText(
                          PeymoString.newsletter,
                          style: appFontStyle(
                            14,
                            FontWeight.w400,
                            color: AppStyle.grey,
                          ),
                        )
                      ],
                    ),
                    50.sbH,
                    PeymoButton(
                      text: PeymoString.singup,
                      onTap: () {},
                    ),
                    20.sbH,
                    RichText(
                      text: TextSpan(
                          text: PeymoString.forgotpassword,
                          style: appFontStyle(16, FontWeight.w500,
                              color: AppStyle.black),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    )
                  ],
                ),
              ],
            ).padding(
              const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            ),
          ),
        ),
      ),
    );
  }
}
