class CreateUserchannels < ActiveRecord::Migration[5.2]
  def change
    create_table :userchannels do |t|
      t.references :user, foreign_key: true
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
