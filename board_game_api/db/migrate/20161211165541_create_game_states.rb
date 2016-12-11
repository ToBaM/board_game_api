class CreateGameStates < ActiveRecord::Migration[5.0]
  def change
    create_table :game_states do |t|
      t.string :state

      t.timestamps
    end
  end
end
