import 'package:stock_app/domain/model/company_listing.dart';
import 'package:stock_app/utils/result.dart';

abstract class StockRepository {
  Future<Result<List<CompanyListing>>> getCompanyListings(
    bool fetchFromRemote,
    String query,
  );
}
