ActiveAdmin.register Post do
  permit_params :title, :body, :permalink, :tag_list

  form do |f|
    f.inputs do
      f.input :title
      f.input :body, as: :medium_editor, input_html: { data: { options: '{"spellcheck":true,"toolbar":{"buttons":["bold","italic","underline","anchor","orderedlist","unorderedlist","strikethrough","subscript","superscript","pre","h1","h2","h3","h4","h5","h6","html"]}}' } }
      f.input :tag_list
      f.input :permalink
    end
    f.actions
  end
end
