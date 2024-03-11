FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }

    # создаем фабрику с названием article_with_comments
    # для создания статьи с несколькими комментариями
    factory :article_with_comments do
      #После создания article
      after :create do |article, evaluator|
        #Создаем список из трех комментариев
        create_list :comment, 3, article: article
      end
    end
  end
end