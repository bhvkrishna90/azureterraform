resource "random_string" "random
    length = 4
    special = false
    lower = true
    upper = false
    number = false
    override_special = "/@£$?#%^&*+-_"
}

module "resourceGroup
    source = "..\\..\\Modules\\ResourceGroup"
    prefix = "${random_string.random.result}"
    projCode = "${var.projCode}"
    location = "${var.location}"
    tags = "${var.tags}"
}

module "ASP"
    source      = "..\\..\\Modules\\Web\\AppService"
    prefix      = "${var.prefix}"
    projCode    = "${var.projCode}"
    location    = "${var.location}"
    rg_name     = "${var.rg_name}"
    aspkind     = "${var.aspkind}"
    aspresr     = "${var.aspresr}"
    aspsku      = "${var.aspsku}"
    aspsize     = "${var.aspsize}"
    tags        = "${var.tags}"
}