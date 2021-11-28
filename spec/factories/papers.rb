FactoryBot.define do
  factory :paper do
    title { "AAAAA" }
    venue { "aaa" }
    year { 2021 }
    authors { build_list :author, 1 }
  end
end
