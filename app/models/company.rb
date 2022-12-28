class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # def freebies
    #     Freebie.where(company_id: self.id}
    # end

    def give_freebie(dev, item_name, value)
        new_freebie = Freebie.new do |f|
            f.item_name = item_name
            f.value = value
            f.dev_id = dev.id
            f.company_id = self.id
        end
    end

    def self.oldest_company
        Company.order(:founding_year).first
    end
end
