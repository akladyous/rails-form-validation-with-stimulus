module ApplicationHelper
  def feedback_for(object, attribute)
    return nil unless object.errors.any?
    content_tag :div, nil, class: %w[d-block invalid-feedback] do
      object.errors.full_messages_for(attribute).to_sentence
    end
  end
end
