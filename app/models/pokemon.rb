class Pokemon < ApplicationRecord
  enum target: [:'12', :'25', :'50', :'100', :'400']
  enum distance: [:'1', :'3', :'5', :'20']
end
