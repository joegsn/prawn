# encoding: utf-8
#
# To set the document metadata just pass a hash to the <code>:info</code>
# option when creating new documents.
# The keys in the example below are arbitrary, so you may add whatever keys you want
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))

creation_date = ENV['BUILD_EPOCH'] ? Time.at(ENV['BUILD_EPOCH'].to_i) : Time.now
Prawn::Document.generate("metadata.pdf",
  :info => {
    :Title        => "My title",
    :Author       => "John Doe",
    :Subject      => "My Subject",
    :Keywords     => "test metadata ruby pdf dry",
    :Creator      => "ACME Soft App",
    :Producer     => "Prawn",
    :CreationDate => creation_date.utc
  }) do

  text "This is a test of setting metadata properties via the info option."
  text "While the keys are arbitrary, the above example sets common attributes."
end
