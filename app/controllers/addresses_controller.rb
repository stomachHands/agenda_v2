class AddressesController < ApplicationController
  def show
    # we'll integrate the Invoice details in the Show Purchase screen
    redirect_to contact_path(params[:contact_id])
  end

  # GET /invoices/new
  # GET /invoices/new.json
  def new
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address
  end

  # GET /invoices/1/edit
  def edit
    @contact = Contact.find(params[:contact_id])
    @address = @contact.build_address
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @address = @contact.build_address(params[:address])

    if @address.save
      redirect_to @contact, :notice => 'address was successfully created'
    else
      render :action => "new"
    end
  end

  # PUT /invoices/1
  # PUT /invoices/1.json
  def update
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address

    if @address.update_attributes(params[:contact_id])
      redirect_to @contact, :notice => 'address was successfully created'
    else
      render :action => "edit"
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
   @contact = Contact.find(params[:contact_id])
   @address = @contact.address
   @address.destroy

   redirect_to @contact
 end
end