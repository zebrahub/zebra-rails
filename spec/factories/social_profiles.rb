# == Schema Information
#
# Table name: social_profiles
#
#  id          :bigint(8)        not null, primary key
#  credentials :text
#  description :string
#  email       :string
#  image_url   :string
#  name        :string
#  nickname    :string
#  other       :text
#  provider    :string
#  raw_info    :text
#  uid         :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#
# Indexes
#
#  index_social_profiles_on_provider_and_uid  (provider,uid) UNIQUE
#  index_social_profiles_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :social_profile do
    user nil
    provider "MyString"
    uid "MyString"
    name "MyString"
    nickname "MyString"
    email "MyString"
    url "MyString"
    image_url "MyString"
    description "MyString"
    other "MyText"
    credentials "MyText"
    raw_info "MyText"
  end
end
