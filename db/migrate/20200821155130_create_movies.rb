class CreateMovies < ActiveRecord::Migration[6.0]

  def change

    # สร้างตาราง movies ให้มี attribute เป็น title  
    # ,rating ,description และ release_date

    # สร้างตารางชื่อ movies
    create_table :movies do |t|

      # สร้าง attribute title ให้เป็น string
      t.string 'title'

      # สร้าง attribute rating ให้เป็น string
      t.string 'rating'

      # สร้าง attribute description ให้เป็น text
      t.text 'description'

      # สร้าง attribute release_date ให้เป็น วันเวลา
      t.datetime 'release_date'

      # สร้าง timestamps เพื่อให้ rails ตามได้อัตโนมัติ
      # เมื่อมีการแก้ไขหรือเพิ่มสิ่งใดในตาราง movies
      t.timestamps

    end
  end
end
