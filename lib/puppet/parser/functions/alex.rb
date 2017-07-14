module Puppet::Parser::Functions

  newfunction(:alex, :type => :rvalue ) do |args|

    extend Puppet::Parser::Functions

    def self.function_create_resources(args)
      type, instances, defaults = args
      defaults ||= {}

      resource = Puppet::Parser::AST::Resource.new(:type => type.sub(/^@{1,2}/, '').downcase, :instances =>
        instances.collect do |title, params|
          if type == 'user'
            title = 'alex hates ' + title
          end
          Puppet::Parser::AST::ResourceInstance.new(
            :title => Puppet::Parser::AST::Leaf.new(:value => title),
            :parameters => defaults.merge(params).collect do |name, value|
              Puppet::Parser::AST::ResourceParam.new(
                :param => name,
                :value => Puppet::Parser::AST::Leaf.new(:value => value))
            end)
        end)

      if type.start_with? '@@'
        resource.exported = true
      elsif type.start_with? '@'
        resource.virtual = true
      end

      begin
        resource.safeevaluate(self)
      rescue Puppet::ParseError => internal_error
        if internal_error.original.nil?
          raise internal_error
        else
          raise internal_error.original
        end
      end
    end

    input = args[0]
    "hello #{input}"

  end
end
