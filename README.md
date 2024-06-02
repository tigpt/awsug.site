# Welcome to the awsug.site project.

## What is this?
Do you want a free subdomain for your AWS User Group?

You are in the right place. Here you can make a Pull Request and create domain for your AWS User Group free of costs.

Check https://lisbon.awsug.site as an example.

# What can I do with this subdomain?
Everything, its yours, you can configure it for your website, or multiple websites. Once the subdomain of your city is pointing to your DNS server or AWS Hostzone, you can configure your web applications there, your backends, your email serves, everything like a normal top domain.

# How to do it?

Make a Pull Request to this repo with your city name and your DNS Nameservers, so we can point it to you. To make the process more secure and avoid someone try to hijack some other city identity, we require you to provide some extra information for us to validate you are how you say you are. It is very simple!

Check the Lisbon AWS User Group example
```
lisbon = {
    nameservers = [
        "ns-269.awsdns-33.com.",
        "ns-1702.awsdns-20.co.uk.",
        "ns-1393.awsdns-46.org.",
        "ns-595.awsdns-10.net."
    ],
    validation_email   = "mail@tig.pt"
    meetup_com_website = "https://www.meetup.com/aws-user-group-lisbon/"
},
```

Now go to https://github.com/tigpt/awsug.site/blob/main/terraform/locals.tf and create yours.

# Don't know how to create a DNS server or AWS HostZone?

Check the Lisbon website repo, there you have terraform and documentation on how to do it.

https://github.com/tigpt/lisbon.awsug.site

Any questions, feedback, or whant to talk with me? just contact me, by [email](mailto:mail@tig.pt) or on [LinkedIn](https://www.linkedin.com/in/tigpt/).
