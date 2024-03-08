import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/enums/filter_button_enum.dart';
import 'package:asroo_store/features/customer/search/data/models/search_request_body.dart';
import 'package:asroo_store/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:asroo_store/features/customer/search/presentation/widgets/save_filter_button.dart';
import 'package:asroo_store/features/customer/search/presentation/widgets/search_for_data_icon.dart';
import 'package:asroo_store/features/customer/search/presentation/widgets/search_name_price_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  FilterButtonsEnum searchEnum = FilterButtonsEnum.non;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceMaxController = TextEditingController();
  final TextEditingController priceMinController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    priceMaxController.dispose();
    priceMinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFadeInRight(
                duration: 200,
                child: SearchNamePriceButton(
                  title: 'Search Name',
                  isSelected: searchEnum == FilterButtonsEnum.name,
                  onTap: nameSearchTap,
                ),
              ),
              CustomFadeInRight(
                duration: 200,
                child: SearchNamePriceButton(
                  title: 'Search Price',
                  isSelected: searchEnum == FilterButtonsEnum.price,
                  onTap: priceSearchTap,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          if (searchEnum == FilterButtonsEnum.name) ...[
            //Search Text Field  Name
            CustomFadeInDown(
              duration: 200,
              child: CustomTextField(
                controller: nameController,
                hintText: 'Search For Product Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Search Name Cant be empty';
                  }
                  return null;
                },
              ),
            ),
            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  //call api for price max and min
                  context.read<SearchBloc>().add(
                        SearchEvent.searchFroProduct(
                          body: SearchRequestBody(
                            searchName: nameController.text.trim(),
                            priceMin: null,
                            priceMax: null,
                          ),
                        ),
                      );
                  setState(() {
                    searchEnum = FilterButtonsEnum.saved;
                  });
                }
              },
            ),
          ] else if (searchEnum == FilterButtonsEnum.price) ...[
            // Search Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFadeInDown(
                  duration: 200,
                  child: SizedBox(
                    width: 160.w,
                    child: CustomTextField(
                      controller: priceMinController,
                      keyboardType: TextInputType.number,
                      hintText: 'Price Min',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Price Min Empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                CustomFadeInDown(
                  duration: 200,
                  child: SizedBox(
                    width: 160.w,
                    child: CustomTextField(
                      controller: priceMaxController,
                      keyboardType: TextInputType.number,
                      hintText: 'Price Max',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Price Max Empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),

            //save price
            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  //call api for price max and min
                  context.read<SearchBloc>().add(
                        SearchEvent.searchFroProduct(
                          body: SearchRequestBody(
                            searchName: null,
                            priceMin: int.parse(priceMinController.text.trim()),
                            priceMax: int.parse(priceMaxController.text.trim()),
                          ),
                        ),
                      );
                  setState(() {
                    searchEnum = FilterButtonsEnum.saved;
                  });
                }
              },
            ),
          ],

          if (searchEnum == FilterButtonsEnum.non) ...[
            SizedBox(height: 100.h),
            const SearchFormDataIcon(),
          ],
        ],
      ),
    );
  }

  void nameSearchTap() {
    if (searchEnum == FilterButtonsEnum.name) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.name;
      });
    }
    nameController.clear();
  }

  void priceSearchTap() {
    if (searchEnum == FilterButtonsEnum.price) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.price;
      });
    }
    priceMinController.clear();
    priceMaxController.clear();
  }
}
