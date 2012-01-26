# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120126083315) do

  create_table "companyprofiles", :force => true do |t|
    t.string   "Company_name"
    t.string   "Owner_name"
    t.text     "Address"
    t.string   "Company_status"
    t.date     "Date_of_Establishment"
    t.string   "Factory_space_status"
    t.integer  "Telephone_No"
    t.integer  "Fax_No"
    t.string   "E_Mail"
    t.string   "Contact_Person"
    t.integer  "Cell_no"
    t.string   "Nature_of_Business"
    t.string   "Local_sales_tax"
    t.string   "Central_sales_tax"
    t.string   "TIN_No"
    t.string   "Central_excise"
    t.string   "Income_tax_PA_No"
    t.integer  "No_of_Employee"
    t.text     "Branches_Address"
    t.string   "Turnover_past3year"
    t.text     "BankersandAddress"
    t.string   "Bank_Account_No"
    t.string   "Our_Manufacturer"
    t.string   "Our_Major_Customer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_details", :force => true do |t|
    t.string   "Name"
    t.string   "Phone"
    t.string   "Mobile"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "follow_ups", :force => true do |t|
    t.date     "dates"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
