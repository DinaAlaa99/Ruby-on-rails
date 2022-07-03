class User
    @@default='user'
    def initialize(n="default name")
             @name = n
    end
    def get_name
        @name
    end
    def set_name=(n)
        @name = n
    end
    def get_default
        "The class variable default is #{@@default}"
    end
    def change_default=(v)
        @@default=v
    end
end

u = User.new "fsfs"
puts u.get_name
u.set_name="change"
puts u.get_name
u.change_default="change default class variable"
puts u.get_default