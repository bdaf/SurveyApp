class Survey < ApplicationRecord
    VALID_GENDERS = ['MALE', 'FEMALE']
    VALID_COLORS = ['green', 'red', 'blue', 'white', 'black']

    validates :age, presence: true
    validates :growth, presence: true
    validates :gender, inclusion: { in: VALID_GENDERS, :message => "The value %{value} is not acceptable, type one of following: " + VALID_GENDERS.to_s  }, presence: true
    validates :fav_color, inclusion: { in: VALID_COLORS , :message => "The value %{value} is not acceptable, type one of following: " + VALID_COLORS.to_s}
end
