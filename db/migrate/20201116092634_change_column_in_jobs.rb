class ChangeColumnInJobs < ActiveRecord::Migration[6.0]
  def change
    change_column_default :jobs, :accepted, false
  end
end
