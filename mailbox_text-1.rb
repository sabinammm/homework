class Email
	def initialize(subject, headers)

		@subject = subject
		@date = headers[:date]
		@from = headers[:from]

	end

  def subject #this is the getter for subject
  	@subject
  end

  def date #this is the getter for date
  	@date
  end

  def from #this is the for from
  	@from       
  end
end

class Mailbox
	def initialize(name, emails)

		@name = name
		@emails = emails
	end

	def name
		@name
	end

	def emails
		@emails
	end
end

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

=begin
The format-method that we will write now, creates an array called lines, that contains elements that it creates using methods - such as format_row,
which are then defined below.
EVERYTHING in ruby is an object.
This makes sense, if you take the "finished piece", and realize that it is actually an array.
Then you ask yourself: What goes into the array?
then you ask yourself: Where will these objects in the array come from?
Then answer is: I already have arrays, that contain this stuff, but in the new array, the elments look a little different.
Thus, we use methods to change the existing elements from other objects (in this case the object formatter of the MailboxTextFormatter-class), to create the properly looking objects for this new array.
THUS: WHILE EVERYTHING IN RUBY IS AN OBJECT, THESE OBJECTS ARE NOT STATIC, BUT DYNAMIC. RUBY IS PANDORA'S BOX.
=end
  def format
    lines = [
      separator,
      format_row(["Date", "From", "Subject"]),
      separator,
      rows.collect { |row| format_row(row) },
      separator,
    ]
    lines.join("\n")
  end

  def separator
    "+#{column_widths.map { |width| '-' * (width + 2) }.join("+")}+"
  end

  def format_row(row)
    cells = 0.upto(row.length - 1).map do |ix|
      row[ix].ljust(column_widths[ix])
    end
    "| #{cells.join(" | ")} |"
  end

  def emails
    @mailbox.emails
  end

  def column_widths
    columns.map { |column| column.max_by { |cell| cell.length }.length }
  end

  def columns
    rows.transpose
  end

  def rows
    emails.collect { |email| [email.date, email.from, email.subject] }
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.class

puts formatter.format