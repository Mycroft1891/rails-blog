ActiveAdmin.register Photo do

  permit_params :description, :image

  form do |f|
    f.inputs do
      f.input :description
      f.input :image
    end
    f.actions
  end

end
