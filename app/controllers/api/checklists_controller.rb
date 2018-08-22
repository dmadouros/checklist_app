module Api
  class ChecklistsController < ApplicationController
    def show
      checklist = Checklist.joins(:items).includes(:items).first

      render json: present_checklist(checklist).to_json
    end

    private

    def present_checklist(checklist)
      {
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
        name: item.name,
        completed: item.completed
      }
    end
  end
end