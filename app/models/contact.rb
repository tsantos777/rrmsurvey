require 'httparty'
require 'json'

class Contact < ApplicationRecord
  before_save :to_lacrm

  def to_lacrm
    # Replace with your API key and account name
    api_key = "850225-3878663731319652403678829065191-HRWw0UYYSg74mR5X9tXW8JDQ20NUt7K82FSzmfUVCVW1z401JW"
    account_name = "api"

    # Set the endpoint and headers
    endpoint = "https://#{account_name}.lessannoyingcrm.com/v2/"
    
    # No encoding needed for LACRM
    #headers = {
    #  "Authorization" => "Basic #{Base64.strict_encode64(api_key + ':X')}",
    #  "Content-Type" => "application/json"
    #}
     
    name = self.first_name + ' ' + self.last_name

    headers = {
        "Authorization" => "#{api_key}",
        "Content-Type" => "application/json"
    }

    payload = {
        "Function" => "CreateContact",
        "Parameters" => {
            "IsCompany" => false,
            "AssignedTo" => "850228" ,  #Test ID to be replaced with LACRM USERID from IDEAL user id.   
            "Name" => "#{name}",
            "Email" => "#{self.email}",
            "Phone" => "#{self.phone}",
        }
    }

    # Make the POST request to create the contact
    # response = HTTParty.post(endpoint, headers: headers, body: contact_data.to_json)
    response = HTTParty.post(endpoint, headers: headers, body: payload.to_json)
    if response.code == 200
      # API Contact created successfully
      self.lacrm_contact_id = JSON.parse(response.body)['ContactId']
    else
      self.lacrm_contact_id = 0
    end
    self.lacrm_response_code = response.code
    self.lacrm_response_body = response.body
  end
end