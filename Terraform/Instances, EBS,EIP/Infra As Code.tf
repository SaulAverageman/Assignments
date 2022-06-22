provider "aws"{
    profile = "slp"
    region = "us-east-1"
}

resource "aws_instance" "instance1"{
    ami = "ami-09d56f8956ab235b3"
    instance_type = "t2.micro"
    key_name = "one-key"
    tags = {
        "Name" = "ubuntu-server"
    }
    depends_on = [aws_ebs_volume.extra_vol]
}

resource "aws_instance" "instance2"{
    ami = "ami-0f095f89ae15be883"
    instance_type = "t2.micro"
    tags = {
        "Name" = "RedHat-server"
    }
}

resource "aws_ebs_volume" "extra_vol"{
    size = 10
    availability_zone = "us-east-1b"
}

resource "aws_volume_attachment" "ebs_attach"{
    device_name = "/dev/xvdf"
    volume_id = aws_ebs_volume.extra_vol.id
    instance_id = aws_instance.instance1.id
}

resource "aws_eip" "expensive_ip"{
    instance = aws_instance.instance2.id
    vpc = true
}
