import 'package:ctc_calculator/src/widgets/tax/tax_calculator.dart';
import 'package:ctc_calculator/src/widgets/tax/tax_data.dart';
import 'package:ctc_calculator/src/widgets/tax/tax_result_dispaly.dart';
import 'package:ctc_calculator/src/widgets/tax/tax_year_section.dart';
import 'package:flutter/material.dart';
import 'package:ctc_calculator/src/theme/app_color.dart';
import 'package:ctc_calculator/src/theme/app_text_style.dart';
import 'package:ctc_calculator/src/widgets/custom_container.dart';
import 'package:ctc_calculator/src/widgets/topBar/app_bar.dart';

class TaxPage extends StatefulWidget {
  const TaxPage({super.key});

  @override
  State<TaxPage> createState() => _TaxPageState();
}

class _TaxPageState extends State<TaxPage> {
  Map<String, dynamic>? _taxResult2024;
  Map<String, dynamic>? _taxResult2025;
  bool _showResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Header section
              _buildHeaderSection(),
              SizedBox(height: 24),
              
              // Calculator section
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: TaxCalculatorForm(
                  onCalculate: _handleTaxCalculation,
                ),
              ),
              
              // Show results if calculated
              if (_showResults && _taxResult2024 != null && _taxResult2025 != null) ...[
                SizedBox(height: 24),
                CustomContainer(
                  padding: const EdgeInsets.all(20),
                  child: TaxResultDisplay(
                    result2024: _taxResult2024!,
                    result2025: _taxResult2025!,
                  ),
                ),
              ],
              
              SizedBox(height: 24),
              
              // FY 2024-25 section
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: TaxYearSection(
                  year: "FY 2024-25",
                  taxSlabs: TaxData.taxSlabs2024,
                  features: TaxData.features2024,
                ),
              ),
              SizedBox(height: 16),
              
              // FY 2025-26 section
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: TaxYearSection(
                  year: "FY 2025-26",
                  taxSlabs: TaxData.taxSlabs2025,
                  features: TaxData.features2025,
                ),
              ),
              SizedBox(height: 16),
              
              // Key changes section
              CustomContainer(
                padding: const EdgeInsets.all(20),
                child: _buildKeyChangesSection(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Handle tax calculation results
  void _handleTaxCalculation(Map<String, dynamic> result2024, Map<String, dynamic> result2025) {
    setState(() {
      _taxResult2024 = result2024;
      _taxResult2025 = result2025;
      _showResults = true;
    });
    
    // Scroll to results
    Future.delayed(Duration(milliseconds: 100), () {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  // Header section
  Widget _buildHeaderSection() {
    return Column(
      children: [
        Center(
          child: Text(
            "New Tax Regime Changes: FY 2024-25 vs FY 2025-26",
            style: AppTextStyles.custom(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.linkBlue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 12),
        Center(
          child: Text(
            "Compare tax calculations and savings under the new tax regime for both financial years",
            style: AppTextStyles.custom(
              fontSize: 14,
              color: AppColors.body,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  // Key changes section
  Widget _buildKeyChangesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.heading,
              size: 20,
            ),
            SizedBox(width: 4),
            Text(
              "Key Changes in FY 2025-26",
              style: AppTextStyles.custom(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.heading,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        
        // Changes list
        ...TaxData.keyChanges.map((change) => _buildChangeItem(change)).toList(),
      ],
    );
  }

  // Change item builder
  Widget _buildChangeItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "✓",
            style: AppTextStyles.custom(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.custom(
                fontSize: 14,
                color: AppColors.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
