module ProfilesHelper
  def profile_constrains
    {
      first_name: { presence: { allowEmpty: false, message: "^First name can't be blank" } },
      last_name:  { presence: { allowEmpty: false, message: "^Last name can't be blank" } },
      age:        { presence: { allowEmpty: false, message: "^Age name can't be blank" } }
    }
  end

  def bs_class_for(flash_type)
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }.fetch(flash_type) || flash_type.to_s
  end

end
