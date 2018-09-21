# == Schema Information
#
# Table name: articles
#
#  id           :bigint(8)        not null, primary key
#  title        :text(65535)
#  body         :text(65535)
#  status       :integer
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :article do
    title { "MyText" }
    body { "MyText" }
    status { 1 }
    published_at { "2018-09-21 03:43:47" }
  end
end
