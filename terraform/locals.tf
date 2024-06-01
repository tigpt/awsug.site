locals {
  usergroup = {
    lisbon = {
      nameservers = [
        "ns-269.awsdns-33.com.",
        "ns-1702.awsdns-20.co.uk.",
        "ns-1393.awsdns-46.org.",
        "ns-595.awsdns-10.net."
      ]
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
      ]
    },
    #
    # end of the template block
    #
  }
}
