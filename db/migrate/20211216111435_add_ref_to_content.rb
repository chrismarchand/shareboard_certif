class AddRefToContent < ActiveRecord::Migration[6.0]
  def change
    add_reference :contents, :user, index: true
  end
end
