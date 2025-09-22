module Componentable
  extend ActiveSupport::Concern

  included do
    belongs_to :bicycle

    validates :brand, presence: true
    validates :model, presence: true
    validates :wear_limit, presence: true, numericality: { greater_than: 0 }
  end
end