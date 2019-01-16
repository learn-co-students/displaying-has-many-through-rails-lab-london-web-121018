Rails.application.routes.draw do

  # resources :patients,
  # resources :doctors
  # resources :appointments, only: [:show]

  # get '/', to: 'application#root'

  # Doctor Routes
  get 'doctors', to: 'doctors#index', as 'doctors'
  get 'doctors/new', to: 'doctors#new', as 'new_doctor'
  get 'doctors/:id', to: 'doctors#show', as 'doctor'
  post 'doctors', to: 'doctors#create'

  # Patient Routes
  get 'patients', to: 'patients#index', as 'patients'
  get 'patients/new', to: 'patients#new', as 'new_patient'
  get 'patients/:id', to: 'patients#show', as 'patient'
  post 'patients', to: 'patient#create'

  # Appointment Routes
  get 'appointments/:id', to: 'appointments#show', as 'appointment'

end
