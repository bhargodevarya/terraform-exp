variable "myvar" {
    type = string
    default= "Hello World"
}

#Access in console by vay.myvar or "${var.myvar}"

variable "mymap" {
    type = map(string)
    default = {
        myKey = "My value"
    }
}
#Access in console by var.mymap or var.mymap["myKey"]

variable "mylist" {
    type = list
    default = [1,2,3] 
}

#Access in console by var.mylist or var.mylist[1]