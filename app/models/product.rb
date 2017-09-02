class Product < ApplicationRecord
  enum size: [:small, :medium, :large]
  enum category: [:coffee, :tea]
end
