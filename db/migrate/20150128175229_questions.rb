class Questions < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.column(:title, :string)
      t.column(:survey_id, :int)

      t.timestamps
    end
  end
end
