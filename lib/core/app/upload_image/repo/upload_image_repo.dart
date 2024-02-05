import 'package:asroo_store/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:asroo_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageRepo {
  const UploadImageRepo(this._dataSource);

  final UploadImageDataSource _dataSource;

  Future<ApiResult<UploadImageResourse>> uploadImage(XFile imageFile) async {
    try {
      final response = await _dataSource.uploadImage(imageFile: imageFile);

      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure('Please, try agian we have error');
    }
  }
}
