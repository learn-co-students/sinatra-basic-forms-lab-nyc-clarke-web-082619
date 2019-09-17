class Puppy
    attr_accessor :name, :months_old
    attr_reader :breed

    def initialize(name, breed, age)
        @name = name
        @months_old= age
        @breed = breed
    end
end