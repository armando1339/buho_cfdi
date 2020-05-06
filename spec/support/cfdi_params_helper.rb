module CfdiParamsHelper

  def cfdi_params
    {
      "receipt": {
        "version": "3.3",
        "serie": "shuhsuhsuhsw",
        "folio_number": "74777e8e8e",
        "date": "sjsjjsjs",
        "stamp": "jsjsjsjjs",
        "payment_method": "ikskskskis",
        "certificate_number": "osiskksj",
        "certificate": "jsjsjsjjsjs",
        "payment_conditions": "kjsksisosos",
        "subtotal": "jiksksksks",
        "discount": "jjjsjsjsjsj",
        "currency": "jsjksjdhdhd",
        "exchange_rate": "jsjsjdhdfhd",
        "total": "isjsxjdjf",
        "type_of_receipt": "jjsjsjjfd",
        "payment_method": "jjsjsjsjsd",
        "expedition_place": "jsjsjsjjs",
        "confirmation": "jjsjsjsjsjdjd",
        "cfdi_related_attributes": {
          "relationship_type": "jhususjujsujdius",
          "related_attributes": [
            {
              "uuid": "ijisjisjisjisjisj"
            }
          ]
        },
        "issuer_attributes": {
          "rfc": "hudshududhs",
          "name": "jdsjidjsijdi",
          "fiscal_regime": "jdisjdisjid" 
        },
        "receiver_attributes": {
          "rfc": "jdisjdisj",
          "name": "jdsjdijsijds",
          "tax_residency": "udisjdisjidjisjd",
          "tax_identity_registration_number": "djisjdisjidjsidjis",
          "cfdi_usage": "disjdisidisdjs" 
        },
        "concepts_attributes": [
          {
            "prod_or_svc_key": "",
            "identification_number": "",
            "quantity": "",
            "unit_measure_key": "",
            "unit_measure": "",
            "description": "",
            "unit_value": "",
            "amount": "",
            "discount": "",
            "transferred_attributes": [
              {
                "base": "yysysy",
                "tax": "uususuus",
                "factor_type": "sjisjijis",
                "rate_or_fee": "jsisjijsijs",
                "import": "jsijsijsij"
              }
            ],
            "detained_attributes": [
              {
                "base": "sjisjijsijs",
                "tax": "sjisjijsijsi",
                "factor_type": "sjijsijsijsi",
                "rate_or_fee": "ssijisjisj",
                "import": "sjijsisijisj" 
              }
            ],
            "customs_information_attributes": {
              "requirement_number": ""
            },
            "property_account_attributes": {
              "number": ""
            },
            "part_attributes": {
              "prod_or_svc_key": "",
              "identification_number": "",
              "quantity": "",
              "unit_measure": "",
              "description": "",
              "unit_value": "",
              "amount": ""
            }
          }
        ],
        "taxes_attributes": {
          "total_taxes_transferred": "",
          "total_taxes_detained": "",
          "transferred_attributes": [
            {
              "tax": "",
              "factor_type": "",
              "rate_or_fee": "",
              "import": "" 
            }
          ],
          "detained_attributes": [
            {
              "tax": "",
              "import": "" 
            }
          ]
        }
      }
    }
  end

  def cancellation_params
    {
      "cancellation": {
        "date": "",
        "rfc": "",
        "uuid_attributes": [
          { "uuid": "" },
          { "uuid": "" },
          { "uuid": "" }
        ]
      }
    }
  end

end