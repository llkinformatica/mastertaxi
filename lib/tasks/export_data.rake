namespace :export do
    desc "Exportando usuarios" 
    task :export_to_seeds => :environment do
      Usuario.all.each do |usuarios| 
        excluded_keys = ['created_at', 'updated_at', 'id'] 
        serialized = usuarios
          .serializable_hash
          .delete_if{|key,value| excluded_keys.include?(key)} 
        puts "Usuario.create(#{serialized})"
      end
      Cooperado.all.each do |cooperados| 
        excluded_keys = ['created_at', 'updated_at', 'id'] 
        serialized = cooperados
          .serializable_hash
          .delete_if{|key,value| excluded_keys.include?(key)} 
        puts "Cooperado.create(#{serialized})"
      end        
      Cliente.all.each do |clientes| 
        excluded_keys = ['created_at', 'updated_at', 'id'] 
        serialized = clientes
          .serializable_hash
          .delete_if{|key,value| excluded_keys.include?(key)} 
        puts "Cliente.create(#{serialized})"
      end
      Localidade.all.each do |localidades| 
        excluded_keys = ['created_at', 'updated_at', 'id'] 
        serialized = localidades
          .serializable_hash
          .delete_if{|key,value| excluded_keys.include?(key)} 
        puts "Localidade.create(#{serialized})"
      end                    
    end
end