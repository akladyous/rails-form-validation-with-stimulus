module ApplicationHelper
  def feedback_for(object, attribute)
    return nil unless object.errors.any?
    content_tag :div, nil, class: %w[d-block invalid-feedback], id: "#{dom_id_for(object, attribute)}_feedback" do
      object.errors.full_messages_for(attribute).to_sentence
    end
  end

  def dom_id_for(object, prefix)
      model_name = object.model_name.param_key unless object.is_a? Class
      prefix ? "#{model_name}_#{prefix}" : object
  end

  def bootstrap_class_for(flash_type)
    debugger
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }.fetch(flash_type) || flash_type.to_s
  end
end
