ActiveAdmin.register Site do

  permit_params :org_id, :name, :address, :postal_code, :services, :active, :populations => {:id}, :phone, :default_capacity

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :name
      f.input :address
      f.input :postal_code
      f.input :phone
      f.input :populations, :as => :check_boxes, :collection => Site::POPULATION_CODES.map{|code| [code[:display], code[:id]] }
      f.input :default_capacity
      f.input :active
    end

    f.actions
  end

end
