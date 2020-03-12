namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do
  
    dev = User.new
    dev.email = "dsharma1@chicagobooth.edu"
    dev.password = "password"
    dev.save

    contact = Contact.new
    contact.contact_name = "Nikki Rouleau"
    contact.company = "Starwood Capital Group"
    contact.email_address = "nrouleau@starwood.com"
    contact.category = "Other"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save

    contact = Contact.new
    contact.contact_name = "John Haug"
    contact.company = "Ardian"
    contact.email_address = "john.haug@ardian.com"
    contact.category = "Private Equity"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save

    contact = Contact.new
    contact.contact_name = "Zach Levine"
    contact.company = "Ardian"
    contact.email_address = "zach.levine@ardian.com"
    contact.category = "Private Equity"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save

    contact = Contact.new
    contact.contact_name = "Michelle Young"
    contact.company = "Zymergen"
    contact.email_address = "myoung@zymergen.com"
    contact.category = "Start Up"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Interview"
    contact.save

    contact = Contact.new
    contact.contact_name = "Jeremy Klepner"
    contact.company = "Jasper Ridge Partners"
    contact.email_address = "jklepner@jasperridge.com"
    contact.category = "Venture Capital"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save

    contact = Contact.new
    contact.contact_name = "Kemper Ahl"
    contact.company = "Industry Ventures"
    contact.email_address = "Kemper@industryventures.com"
    contact.category = "Venture Capital"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save

    contact = Contact.new
    contact.contact_name = "Mike Boggs"
    contact.company = "Revelation Partners"
    contact.email_address = "mboggs@revelation-partners.com"
    contact.category = "Venture Capital"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save
    
    contact = Contact.new
    contact.contact_name = "Alexandra Steelman"
    contact.company = "The Riverside Company"
    contact.email_address = "asteelman@theriversidecompany.com"
    contact.category = "Private Equity"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Interview"
    contact.save

    contact = Contact.new
    contact.contact_name = "Aditya Mangal"
    contact.company = "The Pill Club"
    contact.email_address = "aditya.mangal@thepillclub.com"
    contact.category = "Start Up"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Interview"
    contact.save

    contact = Contact.new
    contact.contact_name = "Cullen Schannep"
    contact.company = "Lexington Partners"
    contact.email_address = "cschannep@lexpartners.com"
    contact.category = "Private Equity"
    contact.contact_input_date = "3/12/2020"
    contact.comments = "Introduction"
    contact.save
  
  end
end
