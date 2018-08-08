class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "japanese", "belgian", "french", "italian"]}

end

=begin
line 2: the has_many is so that you can access things across. for example thanks to this you can now do rest.reviews. dw if it doesnt
make sense. i think it was in one of the prev exercises.

line 2:dependent destroy means if the restaurant is deleted, the reviews will be destroyed along with it.
=end
