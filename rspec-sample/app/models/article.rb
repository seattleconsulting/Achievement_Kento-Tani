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

class Article < ApplicationRecord

  # enum status: { draft: 0, published: 1 }
  #
  # def abbreviated_title
  #   title.size >= 20 ? "#{title.slice(0, 19)}･・・" : title
  # end
  #
  # def publish
  #   return if self.published?
  #   update({status: Article.statuses['published'], published_at: Time.current})
  # end

  validates :title, presence: true
end
