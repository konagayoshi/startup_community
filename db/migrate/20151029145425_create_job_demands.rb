class CreateJobDemands < ActiveRecord::Migration
  def change
    create_table :job_demands do |t|
      t.text :title
      t.text :overview
      t.text :responsibilities
      t.text :cometencies
      t.text :education
      t.text :workexprience
      t.text :language
      t.text :salary
      t.text :welfare
      t.text :others

      t.timestamps null: false
    end
  end
end
