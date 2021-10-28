class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :join_sds
  has_many :specialties, through: :join_sds
end
