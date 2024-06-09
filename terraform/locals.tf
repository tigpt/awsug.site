locals {
  usergroup = {
    castelo-branco = {
      nameservers = [
        "ns-975.awsdns-57.net.",
        "ns-1146.awsdns-15.org.",
        "ns-158.awsdns-19.com.",
        "ns-1724.awsdns-23.co.uk.",
      ],
      validation_email   = "office+aws-ug-cb@martinmueller.dev"
      meetup_com_website = "https://www.meetup.com/aws-user-group-castelo-branco/"
    },
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
    #
    # To create the subodmain for your city, copy this block bellow and change it to reflect your city configurations. If you dont' know how to start, look at lisbon github terraform to see how to create a hostzone in the url bellow:
    # https://github.com/tigpt/lisbon.awsug.site
    #
    your_city = {
      nameservers = [
        "yours-1.hostzone-nameserver-here.com.",
        "yours-2.hostzone-nameserver-here.com.",
        "yours-<3.hostzone-nameserver-here.com.",
        "yours-4.hostzone-nameserver-here.com."
      ],
      validation_email   = "your_email_for us to validate that you are the AWS UG Leader"
      meetup_com_website = "your_url_for_meetup.com_website"
    },
    #
    # end of the template block
    #
  }
}
