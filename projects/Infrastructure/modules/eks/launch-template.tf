resource "aws_launch_template" "eks_nodes" {

  name = "${var.cluster_name}-node-template"

  block_device_mappings {

    device_name = "/dev/xvda"

    ebs {
      volume_size = var.disk_size
      volume_type = "gp3"
    }
  }


  metadata_options {

    http_tokens                 = "required"
    http_put_response_hop_limit = 2

  }

}