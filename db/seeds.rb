# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {
  name: "Owner",
  address: 'test',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  school_received_degree_from: 2005,
  years: 20,
  email: 'owner@vetdoc.com',
  password: 'arun12345',
  type: 'Doctor',
  owner: true
  },
  
  {
  name: "Bob",
  address: 'test',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  school_received_degree_from: 2005,
  years: 10,
  email: 'bob@vetdoc.com',
  password: 'bob12345',
  type: 'Doctor'
  },
  
  {
  name: "Susan",
  address: 'test',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  school_received_degree_from: 2005,
  years: 10,
  email: 'susan@vetdoc.com',
  password: 'susan12345',
  type: 'Doctor'
  },
  
  {
  name: "Receptionist",
  address: 'test',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  school_received_degree_from: 2005,
  years: 20,
  email: 'receptionist@vetdoc.com',
  password: 'arun12345',
  type: 'Receptionist'
  },
  
  {
  name: "Customer1",
  address: 'test2',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  email: 'customer1@vetdoc.com',
  password: 'arun12345',
  type: 'Customer'
  },
  
  {
  name: "Customer2",
  address: 'test3',
  city: 'Tampa',
  state: 'Florida',
  zipcode: 33635,
  email: 'customer2@vetdoc.com',
  password: 'arun12345',
  type: 'Customer'
  }
]
)
