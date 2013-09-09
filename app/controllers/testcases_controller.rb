class TestcasesController  < ApplicationController
  def index
    @testcases = Testcase.all
    
    respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @testcases }
     end
  end
  def new
    @testcase = Testcase.new
    @scenarios = Array.new
    Scenario.all.each do |scenario|
      @scenarios.push([scenario.name,scenario.id])
    end
    @userNames = Array.new
    User.all.each do |user| 
      @userNames.push(user.name)
    end
    
    respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @testcase }
     end
  end
  def create
      @testcase = Testcase.new(params[:testcase])
      scenario = Scenario.find(params[:testcase][:scenarios_id])
      @testcase.scenario =  scenario 
      respond_to do |format|
        if @testcase.save
          format.html { redirect_to @testcase, notice: 'Testcase was successfully created.' }
          format.json { render json: @testcase, status: :created, location: @testcase }
        else
          format.html { render action: "new" }
          format.json { render json: @testcase.errors, status: :unprocessable_entity }
        end
      end
  end
  def show
    @testcase = Testcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testcase }
    end
  end
  def edit
    @testcase = Testcase.find(params[:id])
    @scenarios = Array.new
    Scenario.all.each do |scenario|
      @scenarios.push([scenario.name,scenario.id])
    end
    @userNames = Array.new
    User.all.each do |user| 
      @userNames.push(user.name)
    end
    
    respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @testcase }
     end
  end
  def update
    @testcase = Testcase.find(params[:id])

    respond_to do |format|
      if @testcase.update_attributes(params[:testcase])
        format.html { redirect_to @testcase, notice: 'Testcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @testcase = Testcase.find(params[:id])
    @testcase.destroy

    respond_to do |format|
      format.html { redirect_to testcases_url }
      format.json { head :no_content }
    end
  end
end