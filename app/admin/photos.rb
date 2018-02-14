ActiveAdmin.register Photo do

  permit_params :description, :image

  index do
    id_column
    column :description
    column :image
    column :preview do |photo|
      image_tag(photo.image.url, width: 300)
    end
    actions
  end

  show do |t|
    attributes_table do
      row :description
      row :image do |photo|
        image_tag(photo.image.url, width: 500 )
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :description
      f.input :image
    end
    f.actions
  end

end
