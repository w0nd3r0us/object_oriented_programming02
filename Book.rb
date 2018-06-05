Class book
  @@on_shelf = []
  @@on_loan = []

  def due_date
    @due_date
  end

  def due_date=(due_date)
    @due_date = due_date
  end

  def initialize (booktitle, author, isbn)
    @booktitle = booktitle
    @author = author
    @isbn = isbn
    @due_date = nil
  end

  def self.ceate(booktitle, author, isbn)
    newbook = Book.new(booktitle, author, isbn)
    @@on_shelf << newbook
    return newbook
  end

  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

  def self.browse
    @@on_shelf.sample
  end

  
end
