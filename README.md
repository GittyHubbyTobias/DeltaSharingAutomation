# DeltaSharingAutomation

This repository contains a minimal setup to test whether workflows can append to a file using user input and a template.

The ultimate goal is to apply this approach to Delta Sharing with Terraform files, continuously updating both `shares.tf` and `recipients.tf`.

According to the setup in this repo, you should create one template per target file—the snippet that gets appended each time.  
Embedding the templates directly in the workflow might work, but having separate `.tf.j2` templates offers (in my view) better clarity and flexibility.


## Further investigation

- **Streamline user input**  
  `shares.tf` and `recipients.tf` currently demand many fields. Users have to fill in a hefty form—can we trim this down? Which inputs are truly essential?

- **Deduplicate recipients**  
  `recipients.tf` may contain the same user twice with different values. Ideally each user appears only once. We need a strategy to prevent duplicate entries.

- **Template file extension**  
  We use `.tf.j2` for the templates (Terraform + Jinja2). GitHub treats them as plain text under the hood.  
  - `.tf` → Terraform code  
  - `.j2` → Jinja2 placeholders/parameters  
  This shouldn’t pose any issues, but it’s worth confirming.

- **Handling Grants**  
  In the Terraform template, are the Grants populated automatically (by Terraform or another process), or does the user need to supply them? (I assume users won’t provide grant details themselves.)



- **For test3** 
It’s also possible to feed in JSON data!
This comes in handy for the shares.tf and recipients.tf files, since they require so much input.
And perhaps this approach could help automate the process even further.


{
  "recipients": [
    {
      "key": "groupm_test",
      "name": "groupm_test",
      "comment": "Data share for Test",
      "authentication_type": "TOKEN",
      "properties": {
        "contact_email": "jimy@company.com",
        "advertiser_id_gam": "123456"
      }
    }
  ],
  "shares": [
    {
      "key": "test",
      "name": "test",
      "objects": [
        {
          "name": "test.test.test",
          "data_object_type": "TABLE",
          "history_data_sharing_status": "ENABLED"
        }
      ],
      "grants": [
        {
          "principal": "test",
          "privileges": ["SELECT"]
        }
      ]
    }
  ]
}



