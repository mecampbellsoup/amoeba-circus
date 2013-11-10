class Act < ActiveRecord::Base
  has_many :amoebas, through: :amoeba_acts
  has_many :amoeba_acts
  has_many :talents, through: :amoebas
end
