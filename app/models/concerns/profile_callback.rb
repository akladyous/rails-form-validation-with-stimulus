class ProfileCallback

  def self.before_create(obj)
    obj.first_name.downcase!
    obj.last_name.downcase!
  end

end
