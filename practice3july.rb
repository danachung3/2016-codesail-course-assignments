class Person

  attr_accessor :first_name, :last_name, :birthdate, :hair_color, :eye_color, :height

  def initialize(first_name, last_name, birthdate, hair_color, eye_color, height)
    @first_name = first_name
    @last_name = last_name
    @birthdate = birthdate
    @hair_color = hair_color
    @eye_color = eye_color
    @height = height
  end

  def full_name
    #the hash is for string interpolation - must have squiggly brackets too
    "#{@first_name} #{@last_name}"
  end
end

class Student < Person
  attr_accessor :school_name, :gpa, :courses

  def initialize(school_name, gpa, courses, first_name, last_name, birthdate, hair_color, eye_color, height)
    super(first_name, last_name, birthdate, hair_color, eye_color, height)
    @school_name = school_name
    @gpa = gpa
    @courses = courses
  end

  def sample_class
    if @courses.class != Array
      puts "Be sure to change this attribute to an ARRAY of courses!"
    else
      @courses.shuffle.first
    end
  end
end

class Employee < Person
  attr_accessor :job, :place_of_work, :income

  def initialize(job, place_of_work, income, first_name, last_name, birthdate, hair_color, eye_color, height)
    super(first_name, last_name, birthdate, hair_color, eye_color, height)
    @job = job
    @place_of_work = place_of_work
    @income = income
  end

  def job
    @job
  end
end

class Teacher < Person
  attr_accessor :grade, :subject, :num_students

  def initialize(grade, subject, num_students, first_name, last_name, birthdate, hair_color, eye_color, height)
    super(first_name, last_name, birthdate, hair_color, eye_color, height)
    @grade = grade
    @subject = subject
    @num_students = num_students
  end

  def job_description
    "#{@first_name} #{@last_name} #{@grade} #{@subject}"
  end
end
