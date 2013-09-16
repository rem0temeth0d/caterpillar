class RenamePasswordDigestToPassword < ActiveRecord::Migration
  def up
    rename_column(:users,:password_digest,:password)
    change_column(:users,:password,:string)
  end

  def down
    rename_column(:users,:password,:password_digest)
  end
end
