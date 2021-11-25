# frozen_string_literal: true

class Article < ApplicationRecord
  FILETYPES = [['Audio'], ['Text'], ['Video']].freeze
  STAGES = [['Key Stage 1'], ['Key Stage 2'], ['Parents'], ['Primary'], ['Secondary']].freeze
end
