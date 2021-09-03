class GerenciadorMaquina < ApplicationRecord
     
validates :machine_type, presence: true
validates :name, length: { in: 2..80 }, presence: true
validates :description,  length: { maximum: 1000 }, presence: true
validates :month,numericality: { only_integer: true }, presence: true
validates :purchace_date, exclusion: { in: (Date.current..Date.current+1.years)}

has_many  :maquina

def destroy
  raise "Cannot delete booking with payments" unless maquina.created_at + 30.seconds < maquina.created_at
  # ... ok, go ahead and destroy
  super
end
end


end


 

