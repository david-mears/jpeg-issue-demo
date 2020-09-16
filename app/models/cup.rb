class Cup < ApplicationRecord
  def self.filenames
    Dir.entries("./app/assets/images/cups").reject { |file| File.directory? file }
  end
end
