class State < ActiveHash::Base
  self.data = [ 
    {id: 1, name: 'New York'},
    {id: 2, name: 'California'},
    {id: 3, name: 'Illinois'}
  ]

  include ActiveHash::Associations
  has_many :artists
end