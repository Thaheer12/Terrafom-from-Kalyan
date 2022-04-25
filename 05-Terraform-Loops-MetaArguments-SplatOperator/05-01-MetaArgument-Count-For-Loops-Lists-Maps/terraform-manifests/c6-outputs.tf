# output - For Loop with List
output "for_output_list"{
  description = "For Loop with List"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

# output - For Loop with Map
output "for_output_map1"{
  description = "For Loop with map"
  value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
}

# output - For Loop with Map2
output "for_output_map2"{
  description = "For Loop with map"
  value = {for c, instance in aws_instance.myec2vm: c => instance.public_dns}
}

# output legacy splat operator(latest) - Returns the List
output "legacy_splat_instance_publicdns"{
  description = "Legacy splat expression"
  value = aws_instance.myec2vm.*.public_dns
}

# output latest generalized splat operator-returns List
output "latest_splat_instance_publicdns"{
  description = "Generalized splat expression"
  value = aws_instance.myec2vm [*].public_dns
}