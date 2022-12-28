class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        #find if self.id is associated with item_name
            Freebie.find_by(item_name: item_name, dev_id: self.id) == nil ? false : true
    end

    # def self.give_away(dev, freebie)
    #     # accepts a Dev instance and a Freebie instance,
    #         # dev_id = 1, freebie name = hat (dev_id = 2)
    #     # changes the freebie's dev to be the given dev;
    #         # hats dev_id = 2 changes to dev_id 1
    #     ifyour code should only make the change if the freebie belongs to the dev who's giving it away

end
