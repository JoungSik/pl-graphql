class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name, comment: "이름"
      t.string :extension, comment: "확장자"

      t.timestamps
    end
  end
end
