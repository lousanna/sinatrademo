class CreateModel < ActiveRecord::Migration[4.2]
    def up
        create_table :models do |t|
            t.string :cake
        end
    end
    
    def down
        drop_table :models
    end
    
    def change
    end
end
