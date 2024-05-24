# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  namespace :active_storage do
    resources :blobs
  end
  namespace :noticed do
    resources :notifications
  end
  namespace :noticed do
    resources :events
  end
  resources :announcements
  resources :services
  resources :users
  root to: "dashboard#show"
end
