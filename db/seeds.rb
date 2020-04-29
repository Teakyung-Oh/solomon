# 기존 사용자 삭제
User.destroy_all

# 더미 사용자 생성
user_1 = User.create(email: "1@1", password: "111111", password_confirmation: "111111")
user_2 = User.create(email: "2@2", password: "111111", password_confirmation: "111111")
user_3 = User.create(email: "3@3", password: "111111", password_confirmation: "111111")
user_4 = User.create(email: "4@4", password: "111111", password_confirmation: "111111")
user_5 = User.create(email: "5@5", password: "111111", password_confirmation: "111111")
