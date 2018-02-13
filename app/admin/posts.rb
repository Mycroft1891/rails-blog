ActiveAdmin.register Post do
  permit_params :title, :body, :permalink

  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :permalink
    end
    f.actions
  end
end
