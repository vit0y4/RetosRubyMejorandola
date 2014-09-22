class Computer
    @@users = {}
    
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}
    end

    
    def crear filename
    	if Dir.glob("#{filename}") == []
    		archivo = File.new("#{filename}","w+")
    		@files["#{filename}"] = Time.now
    		puts "#{filename} created at #{Time.now}"
 		
    		else
    			puts "Error, ya existe un archivo con ese nombre"
    	end

    	
    end

    def ls ( lista={ "sort" => "asc"} )
    	if lista["sort"] == "asc"
    		@files.sort.each { |k, v| puts "#{k} created at #{v}" }
    	elsif lista["sort"] == "desc"
    		otro = {}
    		otro = @files.sort_by {|k,v| k}.reverse
    		otro.each { |k, v| puts "#{k} created at #{v}" }
    	end
    end

    def rm filename
    	if Dir.glob("#{filename}") == []
    		puts "Error, no existe un archivo con ese nombre"
 			else
    		File.delete("#{filename}")
    		@files.delete("#{filename}")
    		puts "Archivo Borrado"
    	end
    end

end

nuevo = Computer.new("admin","123")
nuevo.crear("bb.rb")
nuevo.crear("cc.rb")
nuevo.crear("aa.rb")
nuevo.ls( "sort" => "desc")
nuevo.rm("cc.rb")
nuevo.ls
