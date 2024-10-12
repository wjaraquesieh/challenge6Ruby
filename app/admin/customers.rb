# with the activeAdmid is the crud for add customers, required the information for the table.

ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # loop according to the form to created the customers
  form do |f|
    f.inputs 'Customer' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end
end
