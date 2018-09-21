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

require 'rails_helper'

RSpec.describe Article, type: :model do

  # describe '.abbreviated' do
  #   context '記事のタイトルが20文字未満の場合' do
  #     it '記事タイトルがそのまま返る事' do
  #       article = Article.new(title: 'タイトルです')
  #       expect(article.abbreviated_title).to eq 'タイトルです'
  #     end
  #   end
  #
  #   context '記事のタイトルが20文字以上の場合' do
  #     it '記事タイトルが省略される事' do
  #       article = Article.new(title: 'a' * 20)
  #       expect(article.abbreviated_title).to eq "#{'a' * 19}･・・"
  #     end
  #   end
  # end
  #
  # describe '.publish' do
  #   context '記事が非公開状態の場合' do
  #     it '記事が公開状態になる事' do
  #       article = Article.new(status: :draft)
  #       article.publish
  #       expect(article.published?).to be_truthy
  #     end
  #   end
  #
  #   context '記事が公開状態の場合' do
  #     it '記事が公開状態のままである事' do
  #       article = Article.new(status: :published)
  #       article.publish
  #       expect(article.published?).to be_truthy
  #     end
  #   end
  # end

  it 'タイトルが入力されれば有効である事' do
    article = Article.new(title: "")
    expect(article).to be_valid
  end

end
