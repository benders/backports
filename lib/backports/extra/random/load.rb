require "backports/tools"
require "backports/extra/random/MT19937"
require "backports/extra/random/bits_and_bytes"
require "backports/extra/random/implementation"

class Random
  include Backports::Random::Implementation
  extend Backports::Random::Implementation

  def self.new_seed
    Kernel::srand # use the built-in seed generator
    Kernel::srand # return the generated seed
  end

  def inspect
    "#<#{self.class.name}:#{object_id}>"
  end

  srand
end
