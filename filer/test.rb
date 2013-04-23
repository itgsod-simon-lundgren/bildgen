require 'devil'

# class Thumbnail

Devil.with_image("flyg.jpg") do |img|
    img.thumbnail2(150)
    # img.gamma_correct(1.6)
    # img.rotate(45)
    img.save("flyg_thumb.jpg")
end

