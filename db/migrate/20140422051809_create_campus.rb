class CreateCampus < ActiveRecord::Migration
  def up
    create_table :campus do |t|
      t.string :name

      t.timestamps
    end
    #Campus.find_or_create_by_name([{name: "Ashtabula"},{name: "East Liverpool"},{name: "Geauga"}, {name: "Kent"}, {name: "Salem"}, {name: "Stark"}, {name: "Trumbell"}, {name: "Tuscarawas"}])
    #Campus.find_or_create_by_name(name: "Ashtabula")
  end
end
