class Survey < ActiveRecord::Base
  has_many(:questions)
  validates(:title, {:presence => true, :length => {:maximum => 75}})
  before_save(:capitalize_title)



private

  define_method(:capitalize_title) do
    self.title=(title().titleize())
  end
end
