import 'package:ecommerce_app/core/prefrences/PrefsHandler.dart';
import 'package:ecommerce_app/core/resources/assets_manager.dart';
import 'package:ecommerce_app/core/resources/color_manager.dart';
import 'package:ecommerce_app/core/resources/constants_manager.dart';
import 'package:ecommerce_app/core/resources/values_manager.dart';
import 'package:ecommerce_app/core/routes_manager/routes.dart';
import 'package:ecommerce_app/core/widget/custom_elevated_button.dart';
import 'package:ecommerce_app/core/widget/custom_loading_dialog.dart';
import 'package:ecommerce_app/core/widget/main_text_field.dart';
import 'package:ecommerce_app/core/widget/validators.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/presentation/manager/sign_in_view_model_cubit.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/presentation/manager/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/DI/DI.dart';
import '../../../../../core/resources/font_manager.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInViewModelCubit>(),
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: BlocConsumer<SignInViewModelCubit,SignInViewModelState>(
          listener: (context, state) {
            print("Listen");
            if(state is SignInViewModelLoadingState){
              showDialog(context: context,
                  builder: (context) => CustomLoadingDialog(),);
            }
            if(state is SignInViewModelErrorState){
              Navigator.pop(context);
              AppConstants.showToast(state.error);
            }
            if(state is SignInViewModelSuccessState){
              Navigator.pop(context);
              AppConstants.showToast("Logged In Successfully");
              Navigator.pushNamedAndRemoveUntil(context, Routes.mainRoute, (route) => false);
              PrefsHandler.setToken(state.signInEntity.token??"");
              PrefsHandler.setEmail(state.signInEntity.user?.email??"");
              PrefsHandler.setName(state.signInEntity.user?.name??"");
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: REdgeInsets.all(AppPadding.p20),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppSize.s40.h,
                        ),
                        Center(child: SvgPicture.asset(SvgAssets.routeLogo)),
                        SizedBox(
                          height: AppSize.s40.h,
                        ),
                        Text(
                          StringsManager.loginWelcome,
                          style: getBoldStyle(color: ColorManager.white)
                              .copyWith(fontSize: FontSize.s24.sp),
                        ),
                        Text(
                          'Please sign in with your mail',
                          style: getLightStyle(color: ColorManager.white)
                              .copyWith(fontSize: FontSize.s16.sp),
                        ),
                        SizedBox(
                          height: AppSize.s50.h,
                        ),
                        BuildTextField(
                          controller: emailController,
                          backgroundColor: ColorManager.white,
                          hint: 'enter your email',
                          label: 'Email',
                          textInputType: TextInputType.emailAddress,
                          validation: AppValidators.validateEmail,
                        ),
                        SizedBox(
                          height: AppSize.s28.h,
                        ),
                        BuildTextField(
                          controller: passwordController,
                          hint: 'enter your password',
                          backgroundColor: ColorManager.white,
                          label: 'Password',
                          validation: AppValidators.validatePassword,
                          isObscured: true,
                          textInputType: TextInputType.text,
                        ),
                        SizedBox(
                          height: AppSize.s8.h,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Forget password?',
                                  style: getMediumStyle(color: ColorManager.white)
                                      .copyWith(fontSize: FontSize.s18.sp),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: AppSize.s60.h,
                        ),
                        Center(
                          child: SizedBox(
                            // width: MediaQuery.of(context).size.width * .8,
                            child: CustomElevatedButton(
                              // borderRadius: AppSize.s8,
                              isStadiumBorder: false,
                              label: 'Login',
                              backgroundColor: ColorManager.white,
                              textStyle: getBoldStyle(
                                  color: ColorManager.primary,
                                  fontSize: AppSize.s18),
                              onTap: () {
                                // sign in
                                if(formKey.currentState!.validate()){
                                  SignInViewModelCubit.get(context).SignIn(
                                      email: emailController.text,
                                      password: passwordController.text);
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: getSemiBoldStyle(color: ColorManager.white)
                                  .copyWith(fontSize: FontSize.s16.sp),
                            ),
                            SizedBox(
                              width: AppSize.s8.w,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, Routes.signUpRoute),
                              child: Text(
                                'Create Account',
                                style: getSemiBoldStyle(color: ColorManager.white)
                                    .copyWith(fontSize: FontSize.s16.sp),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
