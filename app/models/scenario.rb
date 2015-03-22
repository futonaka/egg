class Scenario < ActiveRecord::Base
  belongs_to :feature
  has_many :steps, dependent: :destroy
end
