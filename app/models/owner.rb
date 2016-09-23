class Owner < ActiveRecord::Base
  def serializable_hash(options = {})
    options = { only: [:owner_name] }.update(options)
    super options
  end
end
