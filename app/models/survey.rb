class Survey < ApplicationRecord
    VALID_GENDERS = ['MALE', 'FEMALE']
    VALID_COLORS = ['green', 'red', 'blue', 'white', 'black']

    validates :gender, inclusion: { in: VALID_GENDERS }
    validates :fav_color, inclusion: { in: VALID_COLORS }
end
