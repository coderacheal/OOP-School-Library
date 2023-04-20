class Person
    attr_reader :id :name :age
    attr_writer :name :age

    def initialize(name='Unknown', age, parent_permission=true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    private

    def of_age?
        @age >=18
    end

    def can_use_services?
        @age >= 18 or parent_permission == true
    end

end


