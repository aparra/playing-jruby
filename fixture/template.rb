require 'java'
require 'jruby/core_ext'

require "#{ENV['M2_REPO']}/br/com/fixturefactory/fixture-factory/0.0.1-JRUBY/fixture-factory-0.0.1-JRUBY.jar"
require "#{ENV['M2_REPO']}/br/com/bfgex/bfgex/1.0-SNAPSHOT/bfgex-1.0-SNAPSHOT.jar"

import 'br.com.fixturefactory.Fixture'
import 'br.com.fixturefactory.Rule'

class Programmer
  attr_accessor :name
  add_method_signature :name=, [java.lang.Void::TYPE, java.lang.Object]
end

rule = Rule.new
rule.add("name", "Baltazar")

Fixture.of(Programmer.become_java!).add_template("valid", rule)

programmer = Fixture.of(Programmer.become_java!).gimme("valid")

puts programmer.name