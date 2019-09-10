class Pokemon
    attr_accessor :name, :type, :db, :hp
    attr_reader :id

    def initialize(keyword)

    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
        result = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
        result.first


    end
end
