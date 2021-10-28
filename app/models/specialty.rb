class Specialty < ApplicationRecord
  has_many :join_sds
  has_many :doctors, through: :join_sd
end
