require 'gosu'

class ReadTogether < Gosu::Window

  TOP_COLOR = Gosu::Color.new(0xFFFCFBF8)

  def initialize width=550, height=700, fullscreen=false
    super
    self.caption = "ReadTogether"
    @image = Gosu::Image.from_text self, "Hi", Gosu.default_font_name, 60
  end

  def button_down id
    close if id == Gosu::KbEscape
  end

  def update
  end

  def draw
    draw_background
    @image.draw margin, margin, 1, 1, 1, Gosu::Color.new(0xFF494842)
  end

  def draw_background
    draw_quad(
      0,     0,      TOP_COLOR,
      width, 0,      TOP_COLOR,
      0,     height, TOP_COLOR,
      width, height, TOP_COLOR,
    0)
  end

  def margin
    height.to_f * 0.07
  end

end

ReadTogether.new.show