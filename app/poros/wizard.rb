class Wizard
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(info)
    @name = info[:name]
    @role = info[:role]
    @house = info[:house]
    @patronus = info[:patronus]
  end
end
