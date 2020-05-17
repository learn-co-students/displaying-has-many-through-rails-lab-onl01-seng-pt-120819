class Doctor < ApplicationRecord
    has_many :patients
    has_many :appointments
    has_many :patients, through: :appointments
end
