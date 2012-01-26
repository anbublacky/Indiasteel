class CreateCompanyProfiles < ActiveRecord::Migration
  def self.up
    create_table :company_profiles do |t|
      t.string :Company_name
      t.string :Owner_name
      t.text :Address
      t.string :Company_status
      t.date :Date_of_Establishment
      t.string :Factory_space_status
      t.integer :Telephone_No
      t.integer :Fax_No
      t.string :E-Mail
      t.string :Contact_Person
      t.integer :Cell_no
      t.string :Nature_of_Business
      t.string :Local_sales_tax
      t.string :Central_sales_tax
      t.string :TIN_No
      t.string :Central_excise
      t.string :Income_tax_PA_No
      t.integer :No_of_Employees
      t.text :Branches_Address
      t.string :Turnover_past3year
      t.text :BankersandAddress
      t.string :Bank_Account_No
      t.string :Our_Manufacturers
      t.string :Our_Major_Customers

      t.timestamps
    end
  end

  def self.down
    drop_table :company_profiles
  end
end
