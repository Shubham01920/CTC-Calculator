import 'package:ctc_calculator/src/widgets/bullets_list.dart';
import 'package:flutter/material.dart';
import 'package:ctc_calculator/src/theme/app_color.dart';
import 'package:ctc_calculator/src/theme/app_text_style.dart';
import 'package:ctc_calculator/src/widgets/custom_container.dart';
import 'package:ctc_calculator/src/widgets/topBar/app_bar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: AppColors.background,
        drawer: const Drawer(),
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
          child: Column(
            children: [
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 📩 Contact Us Header
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                color: AppColors.primary,
                                size: 32,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Contact Us",
                                style: AppTextStyles.custom(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.heading,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // 📬 Get in Touch Section
                          Row(
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: AppColors.primary,
                                size: 25,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Get in Touch",
                                style: AppTextStyles.custom(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.body,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "We'd love to hear from you! If you have any questions, feedback, or concerns, please don't hesitate to reach out.",
                            style: AppTextStyles.bodyText.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 12),

                          // 📧 Email Container
                          Container(
                            margin: EdgeInsets.only(right: 120),
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
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🛠 Report Technical Issues — CENTERED
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(14),
                        padding: const EdgeInsets.all(16),
                        constraints: BoxConstraints(maxWidth: 400),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.report_problem_outlined,
                                  color: AppColors.primary,
                                  size: 22,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Report Technical Issues",
                                  style: AppTextStyles.custom(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.body,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "When reporting technical issues, please include:",
                              style: AppTextStyles.bodyText.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Using the reusable BulletList widget
                            BulletList(
                              items: [
                                "Browser type and version",
                                "Device type",
                                "Description of the issue",
                                "Screenshots (if possible)",
                              ],
                              fontSize: 16,
                            ),

                            const SizedBox(height: 16),
                            RichText(
                              text: TextSpan(
                                style: AppTextStyles.bodyText.copyWith(
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Note: ",
                                    style: AppTextStyles.custom(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.heading,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        'For urgent matters, please include "URGENT" in your email subject line.',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
