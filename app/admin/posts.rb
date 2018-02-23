ActiveAdmin.register Post do
  config.per_page = [10, 50, 100]
  permit_params :title, :body, :image, :permalink, :tag_list

  index do
    selectable_column
    id_column
    column :title
    column :body do |post|
      truncate(post.body, length: 100)
    end
    column :tags do |post|
      post.tags.collect(&:name).join(', ')
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :body, as: :medium_editor, input_html: { data: { options: '{"spellcheck":true,"toolbar":{"buttons":["bold","italic","underline","anchor","orderedlist","unorderedlist","strikethrough","subscript","superscript","pre","h1","h2","h3","h4","h5","h6","html"]}}' } }
      f.input :image, label: 'Image Link'
      f.input :tag_list
      f.input :permalink
    end
    f.actions
  end
end
