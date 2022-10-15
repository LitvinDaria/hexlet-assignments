# require "test_helper"

# class BulletinsTest < ActionDispatch::IntegrationTest
#   # Rails автоматически используют транзакционные тесты
#   # self.use_transactional_tests = false
#   test 'opens all bulletins page' do
#     get root_url
#     assert_response :success
#     assert_select 'h1', 'bulletins'
#   end

#   test 'opens one bulletin page' do
#     bulletin = Bulletin.create(title: "Title 1", body: "Description 1", published: true)

#     # debugger

#     get bulletin_url(bulletin.id)
#     assert_response :success
#     assert_select 'h1', 'bulletin page'
#     assert_select 'h4', 'Title 1'
#     assert_select 'p', 'Description 1'
#   end

#   test 'opens one bulletin page with fixture' do
#     bulletin = bulletins(:one)
#     get bulletin_url(bulletin)
#     assert_response :success
#     assert_select 'h1', 'bulletin page'
#     assert_select 'h4', 'Title 1'
#     assert_select 'p', 'Description 1'
#   end
# end
