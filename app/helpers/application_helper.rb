module ApplicationHelper
	def title(page_title)
  content_for :title, page_title.to_s
  end

 def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end

  def setup_projects(project)
      returning(project) do |a|
        a.assets.build if a.assets.empty?
      end
    end

    def delete_photo(form_builder)
  if form_builder.object.new_record?
    link_to_function("Remove this Photo", "this.up('fieldset').remove()")
  else
    form_builder.hidden_field(:_delete) +
    link_to_function("Remove this Photo", "this.up('fieldset').hide(); $(this).previous().value = '1'")
  end
end
end
