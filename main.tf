data "oci_batch_batch_job_pools" "batch_batch_job_pools_lookup" {
  for_each = var.batch_batch_job_pools_lookup

  batch_context_id = each.value.batch_context_id
  compartment_id   = each.value.compartment_id
  display_name     = each.value.display_name
  state            = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

