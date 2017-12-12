class ModulesController < ApplicationController

 def index
 	json_response(
 			{
		    "error": 0,
		    "error_code": 0,
		    "message": "success",
		    "sys_message": "null",
		    "data": {
		        "modules": [
		            {
		                "entity_id": 17,
		                "name": "Dashboard",
		                "api_url": "/dashboard",
		                "method": "GET",
		                "params": "null",
		                "children": "null"
		            },
		            {
		                "entity_id": 18,
		                "name": "Roles",
		                "api_url": "/roles/list",
		                "method": "GET",
		                "params": "null",
		                "children": "null"
		            },
		            {
		                "entity_id": "null",
		                "name": "User Management",
		                "api_url": "null",
		                "method": "null",
		                "children": [
		                    {
		                        "entity_id": 19,
		                        "name": "Business User",
		                        "api_url": "/users",
		                        "method": "GET",
		                        "params": "null",
		                        "children": "null"
		                    },
		                    {
		                        "entity_id": 20,
		                        "name": "Driver",
		                        "api_url": "/drivers",
		                        "method": "GET",
		                        "params": "null",
		                        "children": "null"
		                    }
		                ]
		            }
		        ]
			    }
			}
 	)
 end 	
end
