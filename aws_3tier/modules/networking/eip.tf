resource "aws_eip" "eip" {
    count = length(aws_subnet.public_subnet)
    domain = "vpc"

    tags = {
      Name = "${var.project_name}-eip-${count.index + 1}"
    }
  
}