class ScenariosController  < AuthorizedApplicationController
  def index
    @scenarios = Scenario.all
    
    respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @scenarios }
       format.xml { render xml: @scenarios }
     end
  end
  def new
    @scenario = Scenario.new
    @userNames = Array.new
    User.all.each do |user| 
      @userNames.push(user.name)
    end
    
    respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @scenario }
       format.xml { render xml: @scenario }
     end
  end
  def create
      @scenario = Scenario.new(params[:scenario])
  
      respond_to do |format|
        if @scenario.save
          format.html { redirect_to @scenario, notice: 'Scenario was successfully created.' }
#          format.js   { render json: {id: @scenario.id, msg: 'Scenario was successfully created.' } }
          format.json { render json: @scenario, status: :created, location: @scenario }
        else
          format.html { render action: "new" }
          format.json { render json: @scenario.errors, status: :unprocessable_entity }
        end
      end
  end
  def show
    @scenario = Scenario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scenario }
      format.xml { render xml: @scenario }
    end
  end
  def edit
    @scenario = Scenario.find(params[:id])
    @userNames = Array.new
    User.all.each do |user| 
      @userNames.push(user.name)
    end
    
    respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @scenario }
     end
  end
  def update
    @scenario = Scenario.find(params[:id])

    respond_to do |format|
      if @scenario.update_attributes(params[:scenario])
        format.html { redirect_to @scenario, notice: 'Scenario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scenario.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @scenario = Scenario.find(params[:id])
    @scenario.destroy

    respond_to do |format|
      format.html { redirect_to scenarios_url }
      format.json { head :no_content }
    end
  end
end