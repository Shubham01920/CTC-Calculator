import 'package:ctc_calculator/src/widgets/bullets_list.dart';
import 'package:flutter/material.dart';
import 'package:ctc_calculator/src/theme/app_color.dart';
import 'package:ctc_calculator/src/theme/app_text_style.dart';
import 'package:ctc_calculator/src/widgets/custom_container.dart';
import 'package:ctc_calculator/src/widgets/topBar/app_bar.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomAppBar(),
        backgroundColor: AppColors.background,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🛡️ Privacy Policy Header
                      Row(
                        children: [
                          Icon(
                            Icons.shield_outlined,
                            color: AppColors.primary,
                            size: 32,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "Privacy Policy",
                            style: AppTextStyles.custom(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AppColors.heading,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Last updated date
                      Text(
                        "Last updated: March 14, 2024",
                        style: AppTextStyles.custom(
                          fontSize: 14,
                          color: AppColors.body.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Information We Collect Section
                      Text(
                        "Information We Collect",
                        style: AppTextStyles.custom(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        "We collect information that you voluntarily provide to us when you use our CTC Calculator, including but not limited to:",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 12),

                      BulletList(
                        items: [
                          "Salary information entered into the calculator",
                          "Contact information when you reach out to us",
                          "Usage data and analytics",
                        ],
                        fontSize: 16,
                      ),
                      const SizedBox(height: 24),

                      // How We Use Your Information Section
                      Text(
                        "How We Use Your Information",
                        style: AppTextStyles.custom(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        "We use the collected information for the following purposes:",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 12),

                      BulletList(
                        items: [
                          "To provide and maintain our calculator service",
                          "To improve user experience",
                          "To respond to your inquiries and support requests",
                          "To send you updates about our service (with your consent)",
                        ],
                        fontSize: 16,
                      ),
                      const SizedBox(height: 24),

                      // Data Security Section
                      Text(
                        "Data Security",
                        style: AppTextStyles.custom(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        "We implement appropriate security measures to protect your personal information. However, please note that no method of transmission over the internet or electronic storage is 100% secure.",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 24),

                      Text(
                        "We retain your information only for as long as necessary to provide our services and comply with legal obligations. Calculator data is not stored on our servers.",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 24),

                      Text(
                        "Our service may contain links to third-party websites or services. We are not responsible for the privacy practices of these external sites.",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 24),

                      // Your Rights Section
                      Text(
                        "Your Rights",
                        style: AppTextStyles.custom(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        "You have the right to:",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 12),

                      BulletList(
                        items: [
                          "Access your personal information",
                          "Request correction of inaccurate data",
                          "Request deletion of your data",
                          "Object to processing of your data",
                          "Withdraw consent at any time",
                        ],
                        fontSize: 16,
                      ),
                      const SizedBox(height: 24),

                      // Contact Information Section
                      Text(
                        "Contact Us",
                        style: AppTextStyles.custom(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.heading,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        "If you have any questions about this Privacy Policy, please contact us at:",
                        style: AppTextStyles.bodyText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 12),

                      Container(
                        margin: const EdgeInsets.only(right: 120),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.cardBackground,
                          border: Border.all(
                            color: AppColors.primary,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.mail_outline_outlined,
                              color: AppColors.primary,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "ksanjeev284@gmail.com",
                              style: AppTextStyles.custom(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
