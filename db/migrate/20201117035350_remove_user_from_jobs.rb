class RemoveUserFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :jobs, :user, null: false, foreign_key: true
  end
end
