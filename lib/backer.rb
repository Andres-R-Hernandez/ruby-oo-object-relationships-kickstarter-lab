class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    back_project = ProjectBacker.new(project,self)
  end

  def backed_projects

    # ProjectBacker.all.collect do |pb|
    #   if pb.backer==self
    #     pb.project
    #   end
    # end

    # temp = ProjectBacker.all.select do |pb|
    #   pb.backer==self
    # end
    #
    # temp.map {|pb|pb.project}

    ProjectBacker.all.select{|pb|pb.backer==self}.map{|pb|pb.project}

  end

end
