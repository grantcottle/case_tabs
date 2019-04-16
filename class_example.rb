
class MethodMan
    # attr_accessor 
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
        self.class.send(:attr_accessor, "#{key}")
      end
    end
end

h = {"this" => [1,2,3,4,5,6], "that" => ['here', 'there', 'everywhere'], :other => 100}
puts MethodMan.new(h)