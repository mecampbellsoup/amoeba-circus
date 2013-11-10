class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :acts, through: :amoeba_acts
  has_many :amoeba_acts
end
