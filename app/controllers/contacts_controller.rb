class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order({ :created_at => :desc })

    render({ :template => "contacts/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @contact = Contact.where({:id => the_id }).at(0)

    render({ :template => "contacts/show.html.erb" })
  end

  def create
    @contact = Contact.new
    @contact.contact_name = params.fetch("query_contact_name")
    @contact.company = params.fetch("query_company")
    @contact.email_address = params.fetch("query_email_address")
    @contact.contact_input_date = params.fetch("query_contact_input_date")
    @contact.comments = params.fetch("query_comments")
    @contact.category = params.fetch("query_category")
    @contact.user_id = params.fetch("query_user_id")

    if @contact.valid?
      @contact.save
      redirect_to("/contacts", { :notice => "Contact created successfully." })
    else
      redirect_to("/contacts", { :notice => "Contact failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @contact = Contact.where({ :id => the_id }).at(0)

    @contact.contact_name = params.fetch("query_contact_name")
    @contact.company = params.fetch("query_company")
    @contact.email_address = params.fetch("query_email_address")
    @contact.contact_input_date = params.fetch("query_contact_input_date")
    @contact.comments = params.fetch("query_comments")
    @contact.category = params.fetch("query_category")
    @contact.user_id = params.fetch("query_user_id")

    if @contact.valid?
      @contact.save
      redirect_to("/contacts/#{@contact.id}", { :notice => "Contact updated successfully."} )
    else
      redirect_to("/contacts/#{@contact.id}", { :alert => "Contact failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @contact = Contact.where({ :id => the_id }).at(0)

    @contact.destroy

    redirect_to("/contacts", { :notice => "Contact deleted successfully."} )
  end
end
