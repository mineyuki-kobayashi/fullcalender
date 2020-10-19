Rails.application.routes.draw do
  resources :calender_events
  get 'events/index'
  root to: "calender_events#calender"
end
