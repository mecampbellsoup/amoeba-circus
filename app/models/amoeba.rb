class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :acts, through: :amoeba_acts
  has_many :amoeba_acts

  def split!
    2.times do
      Amoeba.create({
        :name => Faker::Name.name,
        :generation => generation + 1,
        :talent => talent,
        :act_ids => act_ids
      })
    end
    self.destroy
  end

end
