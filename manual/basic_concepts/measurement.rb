# encoding: utf-8
#
# The base unit on Prawn is the PDF Point. One PDF Point is equal to 1/72 of
# an inch.
#
# There is no need to waste time converting this measures. Prawn has already
# done that work for you with helpers for converting from other measurements
# to PDF Points.
#
# Just <code>require "prawn/measurement_extensions"</code> and it will mix some
# helpers onto Numeric for converting all commons measurement units to PDF
# Points.
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))

filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::Example.generate(filename) do
  require "prawn/measurement_extensions"
  
  [:mm, :cm, :dm, :m, :in, :yd, :ft].each do |measurement|
    text "1 #{measurement} in PDF Points: #{1.send(measurement)} pt"
    move_down 10
  end
end