class AccountsController < ApplicationController
  before_filter :name, :only => :edit, :destroy  # @account.name will be executed before the edit or destroy method(action) can be invoked on @account.  If the user who has the account has a name the action will execute.  

  def index                                      # This is a RESTful action and is mapped by Rails by default to an HTTP GET request.  Rails expects an index.html.erb or index.haml.erb or index.something in the Accounts view to map this action to.
    @accounts = Account.all                      # @accounts is an instance variable and will be accessible in the view this action is mapped to.
  end   

  def show
    @account = Account.find(params[:id])         
    # params[:id] is passed to the controller from the view. The params hash is the primary tool form moving data from a form or URL into a controller.  Anytime you click on the link_to the show or edit action of an object Rails will put that objects id in the params hash and call the appropriate action in that objects controller.  If you click the show link on an account it will call this action.  Now the instance variable in the view show.html.erb will hold a single account instead of an array     
  end

  def new
    @account = Account.new                       # This initializes a new account with all the fields set to blank unless you specified a default in your migration.  This account has not been save to the db yet.  It is ready for a user to fill in.
    respond_to do |format|                       # Rails can automatically respond differently to different client request.  If a client i.e browser wants HTML rails responds with HTML.  If a client e.g. an API want XML Rails responds with XML.
      format.html # new.html.erb                 # 
      format.xml  { render :xml => @account }
    end
  end

  def edit
    @account = Account.find(params[:id])         # Same as show, but mapped to a different view
  end

  def create                                     # Finally we have a POST.  All the prior actions were GETs, but now we are saving some data to the db.
    @account = Account.new(params[:account])     # The :account

    respond_to do |format|
      if @account.save                           # If the validations pass and the account gets saved redirect to the show page of the new record, otherwise refresh/render the new page (hopefully showing what error caused the record to fail to save).
        format.html { redirect_to(@account, :notice => 'Account was successfully created.') }
        format.xml  { render :xml => @account, :status => :created, :location => @account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update                                     # This is another of the seven RESTful Rails actions and results in a PUT request because you are updating an existing record 
    @account = Account.find(params[:id])

    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.js                                # Rails can also respond with JavaScript.  Look up UJS. Rails 3 has made large improvements here. 
        format.html { redirect_to(@account, :notice => 'Account was successfully updated.') }
        format.xml  { head :ok }
      else
        format.js
        format.html { render :action => "edit" }
        format.xml  { render :xml => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy                                    # This results in a DELETE 
    @account = Account.find(params[:id])
    @account.destroy                             # destroy is a more thourough delete and will check the options of this records associations and destroy the associated objects as well if they are dependant on this object.  The option <:dependant => :destroy> is not set for this object's only association: User.  The user this account belongs to will therefore survive the destruction of this account.

    respond_to do |format|
      format.html { redirect_to(accounts_url) }
      format.xml  { head :ok }
    end
  end
end 