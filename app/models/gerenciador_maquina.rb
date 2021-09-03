class GerenciadorMaquina < ApplicationRecord
     
validates :machine_type, presence: true
validates :name, length: { in: 2..80 }, presence: true
validates :description,  length: { maximum: 1000 }, presence: true
validates :month,numericality: { only_integer: true }, presence: true
validates :purchace_date, exclusion: { in: (Date.current..Date.current+100000.years)}

  class ValidaMaquina < ApplicationRecord
    has_many :created_at, :dependent => :destroy
      def created_at?
        created_at + 1800.seconds
      end    
  end
end


