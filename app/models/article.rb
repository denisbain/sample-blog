class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments

  def subject
    title
  end

  describe "#subject" do
    it "returns the article title" do
      # Создаем объект Article хитрым посоом
      article = create(:article, title: 'Lorem Ipsum')

      #assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end
