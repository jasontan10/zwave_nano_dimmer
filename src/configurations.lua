local devices = {
  AEOTEC_NANO_DIMMER = {
    MATCHING_MATRIX = {
      mfrs = 0x0086,
      product_types = {0x0003, 0x0103, 0x0203},
      product_ids = 0x006F
    },
    CONFIGURATION = {
      {parameter_number = 80, size = 1, configuration_value = 3},
      {parameter_number = 90, size = 1, configuration_value = 1},
      {parameter_number = 91, size = 2, configuration_value = 1},
      {parameter_number = 101, size = 4, configuration_value = 12},
      {parameter_number = 102, size = 1, configuration_value = 4},
      {parameter_number = 103, size = 1, configuration_value = 8},
      {parameter_number = 111, size = 4, configuration_value = 300},
      {parameter_number = 112, size = 4, configuration_value = 300},
      {parameter_number = 113, size = 4, configuration_value = 300}
    }
  },
}
