require 'rails_helper'

RSpec.describe Admin::TasksController, type: :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :show, params: {id: task.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Task" do
        expect {
          post :create, params: {task: valid_attributes}, session: valid_session
        }.to change(Task, :count).by(1)
      end

      it "redirects to the created task" do
        post :create, params: {task: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Task.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {task: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested task" do
        task = Task.create! valid_attributes
        put :update, params: {id: task.to_param, task: new_attributes}, session: valid_session
        task.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the task" do
        task = Task.create! valid_attributes
        put :update, params: {id: task.to_param, task: valid_attributes}, session: valid_session
        expect(response).to redirect_to(task)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        task = Task.create! valid_attributes
        put :update, params: {id: task.to_param, task: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end
end
