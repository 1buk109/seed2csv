require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'mysql2',
  host:     'localhost',
  username: 'root',
  password: '',
  database: 'my_research',
  charset:  'utf8mb4',
  encoding: 'utf8mb4',
)

ActiveRecord::Base.logger = Logger.new($stdout)
Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord.default_timezone = :local


class Sequence < ActiveRecord::Base
end 
class Source < ActiveRecord::Base
end
