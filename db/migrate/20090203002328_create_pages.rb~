class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
	t.string :title, :body, :url
	t.string :user_id, :last_updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
