class RemoveAuthorFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :author, :string
  end
end
