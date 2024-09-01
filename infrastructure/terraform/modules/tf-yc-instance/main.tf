resource "yandex_compute_instance" "vm-1" {
    name = var.instance_name
    platform_id = var.instance_platform_id
    zone = var.instance_zone

    scheduling_policy {
        preemptible = false
    }
    resources {
        cores  = var.instance_cpu_cores
        memory = var.instance_memory
    }

    boot_disk {
        initialize_params {
            image_id = var.instance_image_id
            size = var.instance_disk_size

        }
    }

    network_interface {
        subnet_id = var.instance_subnet_id
        nat       = true
    }

    metadata = {
        user-data = file("${path.module}/config")
    }
    
}