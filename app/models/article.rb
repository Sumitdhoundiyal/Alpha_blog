class Article < ApplicationRecord
  belongs_to :user
 validates :title, presence: true, length: {minimum:3, maximum:30}
 validates :discription, presence: true,length: {minimum:10, maximum:200}
end
