class EventsController < ApplicationController
  respond_to :html

  before_filter :authenticate_user!

  def index
    @events = Event.scoped
    respond_with @events
  end

  def show
    @event = Event.where(id: params[:id]).first
    respond_with @event
  end

  def new
    @event = Event.new
    respond_with @event
  end

  def edit
    @event = current_user.events.where(id: params[:id]).first
  end

  def create
    @event = current_user.events.new(params[:event])
    flash[:notice] = 'Event was successfully created.' if @event.save
    respond_with @event, location: nil, errors: @event.errors
  end

  def update
    @event = Event.where(id: params[:id]).first
    flash[:notice] = 'Event was successfully updated.' if @event.update_attributes(params[:event])
    respond_with @event, location: nil, errors: @event.errors
  end

  def destroy
    @event = Event.where(id: params[:id]).first
    flash[:notice] = 'Event was successfully updated.' if @event.destroy
    respond_with @event, location: nil, errors: @event.errors
  end
end
