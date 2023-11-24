import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/domain/repository/mock_news_repo.dart';

void main() {
  test('on calling getNews in news_repo should return response if status is ok', () async {
    final repo = MockNewsRepo();
    final response = await repo.getNews(country: 'in', page: 1, pageSize: 10, apiKey: 'xyz');
    expect(response?.status, 'ok');
  });
}
