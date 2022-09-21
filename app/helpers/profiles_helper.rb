module ProfilesHelper
  def profile_constrains
    {
      first_name: { presence: { allowEmpty: false, message: "^First name can't be blank" } },
      last_name:  { presence: { allowEmpty: false, message: "^Last name can't be blank" } },
      age:        { presence: { allowEmpty: false, message: "^Age name can't be blank" } }
    }
  end

end
