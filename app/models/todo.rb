class Todo < ApplicationRecord
  has_many :items, dependent: :destroy
  validates_presence_of :title, :created_by

  def self.orders_json
  	{
	    "error": 0,
	    "message": "Success",
	    "data": [
	      {
	        "id": 1,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Suneel",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 2,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Roshan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 3,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Asad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 4,
	        "position": {
	          "x_axis": 1,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Ahmad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 5,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Junid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 15,
	        "position": {
	          "x_axis": 1,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Khalid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 7,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Kunal",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 8,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Mohbat Khan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      }
	    ]
	  }
  end	


  def self.swap_orders_json
  	{
	    "error": 0,
	    "message": "Success",
	    "data": [
	      {
	        "id": 1,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Suneel",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 2,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Roshan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 3,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Asad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 4,
	        "position": {
	          "x_axis": 1,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Ahmad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 5,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Junid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 15,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Khalid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 7,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Kunal",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 8,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Mohbat Khan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 9,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Mohbat Khan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 10,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Alpha",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 11,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Beta",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      }
	    ]
	  }
  end


  def self.cancel_orders_json
  	{
	    "error": 0,
	    "message": "Success",
	    "data": [
	      {
	        "id": 1,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Suneel",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 2,
	        "position": {
	          "x_axis": 2,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Roshan",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 3,
	        "position": {
	          "x_axis": 3,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Asad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 4,
	        "position": {
	          "x_axis": 1,
	          "y_axis": 0
	        },
	        "matrix_cell": {
	          "task_id": 578,
	          "task_title": "Ahmad",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 5,
	        "position": {
	          "x_axis": 0,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 579,
	          "task_title": "Junid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      },
	      {
	        "id": 15,
	        "position": {
	          "x_axis": 1,
	          "y_axis": 1
	        },
	        "matrix_cell": {
	          "task_id": 588,
	          "task_title": "Khalid",
	          "assign_to": "4.14.*",
	          "assign_entity_id": 1,
	          "assign_entity_type_id": 1
	        },
	        "matrix_entity": {
	          "identifier": "entity",
	          "entity": {
	            "entity_id": 1,
	            "entity_type_id": 1,
	            "entity_auth_id": 1,
	            "created_at": "2017-09-07 09:10:21",
	            "updated_at": "null",
	            "deleted_at": "null",
	            "auth": {
	              "entity_auth_id": 1,
	              "email": "admin@admin.com",
	              "name": "Tahseen",
	              "mobile_no": "+92-6656897",
	              "new_mobile_no": "",
	              "image": "",
	              "thumb": "",
	              "country_id": 187,
	              "state_id": 0,
	              "city_id": "null",
	              "status": 1,
	              "platform_type": "custom",
	              "platform_id": "null",
	              "device_udid": "",
	              "device_type": "android",
	              "device_token": "",
	              "email_verification_token": "null",
	              "is_email_verified": 1,
	              "email_verified_at": "null",
	              "is_verified": 1,
	              "verification_token":
	                "cmwpol5lEsIRaDkI2nKm0f129b54af71e599be9481a46d98c1dc",
	              "verified_at": "null",
	              "mobile_verification_code": "null",
	              "is_mobile_verified": 0,
	              "mobile_verified_at": "null",
	              "is_guest": 0,
	              "remember_login_token_created_at": "null",
	              "forgot_password_hash_created_at": "null",
	              "forgot_password_hash": "null",
	              "sent_email_verification": 1,
	              "sent_mobile_verification": 1,
	              "other_data": "null",
	              "additional_note": "null",
	              "has_temp_password": 0,
	              "last_login_at": "2017-11-06 10:09:11",
	              "last_seen_at": "null",
	              "created_at": "2017-09-07 09:10:20",
	              "updated_at": "2017-10-31 11:00:27",
	              "deleted_at": "null"
	            }
	          }
	        }
	      }
	    ]
	  }
  end

  def self.matrix_json
  	{
        "error": 0,
        "message": "error",
        "data": {
          "title": "Order Management",
          "x_axis": "Customer Care, Production, Dispatch, Delivered",
          "x_axis_detail": {
            "table": "sys_role",
            "column": "id:role_id,title:title",
            "ids": "3,4,7,11",
            "condition": "getIdPosition",
            "as": "Customer Care, Production, Dispatch, Delivered"
          },
          "y_axis": "Backlog, Assigned",
          "y_axis_detail": {
            "table": "wfs_task_instance",
            "column": "id:assign_to,title:title",
            "ids": "",
            "condition": "getUserAsteriskPosition",
            "as": "Backlog, Assigned"
          }
        }
      }

  end	
end
