module Api
  class ChecklistsController < ApplicationController
    def index

    end

    def show
      checklist = Checklist.includes(:items).first

      render json: present_checklist(checklist).to_json
    end

    private

    def present_checklist(checklist)
      {
        id: checklist.id,
        name: checklist.name,
        state: checklist.state.name,
        items: present_items(checklist.items)
      }
    end

    def present_items(items)
      items.map { |item| present_item(item) }
    end

    def present_item(item)
      {
        id: item.id,
        name: item.name,
        completed: item.completed
      }
    end
  end
end
