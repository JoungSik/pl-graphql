class Language < ApplicationRecord

  validates_presence_of :name, :extension
  validates_uniqueness_of :name, :extension
end
