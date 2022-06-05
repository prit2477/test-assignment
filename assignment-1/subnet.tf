# Creating 1st web subnet 
resource "aws_subnet" "public-subnet-1" {
    count = length(var.public_subnet_cidrs)

    vpc_id                  = aws_vpc.Demo_vpc.id
    cidr_block             = "${var.public_subnet_cidrs[count.index]}"
    map_public_ip_on_launch = true
    availability_zone = element(var.azs,count.index)

    tags = {
        Name = "${var.vpc_name}-public-subnet"
        }
        }


# Create the web subnets
resource "aws_subnet" "web" {
  count = length(var.web_subnet_cidrs)

  vpc_id                  = aws_vpc.Demo_vpc.id
  cidr_block              = var.web_subnet_cidrs[count.index]
  availability_zone       = element(var.azs,count.index)
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-web-subnet"
  }
}

# Create the application subnets
resource "aws_subnet" "app" {
  count = length(var.app_subnet_cidrs)

  vpc_id                  = aws_vpc.Demo_vpc.id
  cidr_block              = var.app_subnet_cidrs[count.index]
  availability_zone       = element(var.azs,count.index)
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-app-subnet"
  }
}

# Create the database subnets
resource "aws_subnet" "database" {
  count = length(var.data_subnet_cidrs)

  vpc_id                  = aws_vpc.Demo_vpc.id
  cidr_block              = var.data_subnet_cidrs[count.index]
  availability_zone       = element(var.azs,count.index)
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-database-subnet"
  }
}