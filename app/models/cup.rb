class Cup < ApplicationRecord
  belongs_to :game
  validates :kind, presence: true
  validates :image, presence: true

  NAMES = {
    accursed_chalice: 'The Accursed Chalice',
    merlins_goblet: "Merlin's Goblet",
    holy_grail: 'The Holy Grail'
  }.freeze

  # rubocop:disable Layout/LineLength
  FILENAMES = ['another cup.jpg', 'chalice6.jpg', 'jewel cup.jpg', 'big_cup.jpg', 'chalice7.jpg', 'kiddush 2.jpg', 'cedarware cup.jpg', 'cup 8.jpeg', 'kiddush 3.jpg', 'chalice times.gif', 'cup2.jpg', 'kiddush 4.jpg', 'chalice-web.jpg', 'funny cup.jpg', 'kiddush.jpg', 'chalice.jpg', 'glasscup.jpg', 'metal cup.jpg', 'chalice2.jpg', 'goldcup.jpeg', 'metalcup.jpeg', 'chalice3.jpg', 'golden chalice no whitebackground.png', 'mug.png', 'chalice4.jpg', 'ivory cup.jpg', 'stonecup.jpg', 'chalice5.jpeg', 'ivory cups.jpeg'].freeze
  # rubocop:enable Layout/LineLength

  enum kind: { accursed_chalice: 0, merlins_goblet: 1, holy_grail: 2 }

  def self.read_n_random_filenames(number_of_filenames)
    filenames = FILENAMES.dup
    scratch = []
    number_of_filenames.times { scratch.push filenames.shuffle!.pop }
    scratch
  end

  def human_readable_name
    NAMES[kind.to_sym]
  end
end
