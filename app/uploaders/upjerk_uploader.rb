class UpjerkUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  # storage :file
  storage :fog

  def store_dir
    Rails.env.production? ? (primary_folder = "production") : (primary_folder = "test")

    "uploads/#{primary_folder}/#{model.class.to_s.underscore}/#{model.category.name.to_s.underscore}/"
  end

  version :thumb do
    process :resize_to_fill => [180, 180]
  end

  version :icon do
    process :resize_to_fill => [50, 50]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end
end
