ActiveAdmin.register Account do
  actions :all, except: [:destroy]

  permit_params :name, :user_name, :password_digest, :link, :email, :user_id

  controller do
    http_basic_authenticate_with :name => "frodo", :password => "bagginsez"

    def update
      if params[:account][:password_digest].blank?
        params[:account].delete(:password_digest)
      end
      super
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :user_name
    column :link
    column :email
    column :user
    actions
  end

  form do |f|
    f.inputs "Account Details" do
      f.input :user
      f.input :name
      f.input :user_name
      f.input :password_digest
      f.input :link
      f.input :email
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
