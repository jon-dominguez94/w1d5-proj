require 'byebug'
class PolyTreeNode
  
  def initialize(value)
    @value = value
    @parent = nil 
    @children = []
  end
  
  def parent
    @parent
  end
  
  def children
    @children
  end
  
  def value
    @value
  end
  
  def parent=(node)
    # debugger
    if node == nil
      @parent.children.delete(self) unless @parent == nil
    else
      if @parent != node && @parent
        @parent.children.delete(self)
      end
      unless node.children.include?(self) 
        node.children << self
      end
    end
    @parent = node 
  end
  
  def add_child(node)
    node.parent = self
  end
  
  def remove_child(node)
    raise if !@children.include?(node)
    node.parent = nil
    
    
  end
  
end