class PhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    process :optimize
    storage :file
  end

  def store_dir
    "#{model.class.to_s.underscore}/#{model.id}"
  end


  def default_url
    "https://s3-us-west-2.amazonaws.com/hyouka/static_files/default_avatar.jpg"
  end

  def optimize
    manipulate! do |img|
        return img unless img.mime_type.match(/image\/jpeg/)
        img.strip
        img.combine_options do |c|
            c.quality "80"
            c.depth "8"
            c.interlace "plane"
        end
        img
      end
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
