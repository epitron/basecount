ActiveAdmin.register Org do

  index do
    column :name
    column :description
    column :page do |org|
      host = "#{org.subdomain}.site.com"
      link_to host, "http://host"
    end

    column :sites do |org|
      org.sites.each do |site|
        link_to site
      end
    end

    column :actions do |org|
      link_to "Create Site", new_admin_site_path
    end
  end

end
