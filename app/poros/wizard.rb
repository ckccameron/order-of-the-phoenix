class Wizard
  attr_reader :name,
              :role,
              :house,
              :patronus,
              :id

  def initialize(info)
    binding.pry
    @name = info[:name]
    @role = info[:role]
    @house = info[:house]
    @patronus = info[:patronus]
    @id = info[:id]
  end
end
