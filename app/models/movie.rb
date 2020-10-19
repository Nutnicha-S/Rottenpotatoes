class Movie < ActiveRecord::Base
    # สร้างเพื่อให้ ActiveRecord 
    # เป็นตัวเชื่อม models เข้ากับ Database
    has_many :reviews

    def Movie_title
        self.title = "Barbie"
    end

    def Movie_description
        self.description = "12 dancing princess"        
    end
        
    def Movie_release
        self.release_date = "September 19, 2006"
    end
end
