ActiveAdmin.register Photo do

  permit_params :description, :image

  index do
    id_column
    column :description
    column :image do |photo|
      link_to(photo.image.url, photo.image.url)
    end
    column :preview do |photo|
      image_tag(photo.image.url, width: 400)
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
    f.inputs multipart: true do
      f.input :description
      f.input :image, as: :file, hint: image_tag(f.object.image.url, width: 500)
      f.input :image_cache, as: :hidden
    end
    f.actions
  end

end
