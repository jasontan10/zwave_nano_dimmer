local devices = {
  AEOTEC_NANO_DIMMER = {
    MATCHING_MATRIX = {
      mfrs = 0x0086,
      product_types = {0x0003, 0x0103, 0x0203},
      product_ids = 0x006F
    },
    PARAMETERS = {
      overheatProtection = {parameter_number = 4, size = 1},
      afterPowerLoss = {parameter_number = 20, size = 1},
      instantUpdates = {parameter_number = 80, size = 1},
      powerUsageReports = {parameter_number = 90, size = 1},
      powerUsageWatts = {parameter_number = 91, size = 2},
      powerUsagePercentage = {parameter_number = 92, size = 1},
      timedReport1 = {parameter_number = 101, size = 4},
      timedReport1Schedule = {parameter_number = 111, size = 4},
      timedReport2 = {parameter_number = 102, size = 4},
      timedReport2Schedule = {parameter_number = 112, size = 4},
      timedReport3 = {parameter_number = 103, size = 4},
      timedReport3Schedule = {parameter_number = 113, size = 4},
      s1SwitchType = {parameter_number = 120, size = 1},
      s1SwitchControl = {parameter_number = 123, size = 1},
      s1SwitchNotification = {parameter_number = 81, size = 1},
      s2SwitchType = {parameter_number = 121, size = 1},
      s2SwitchControl = {parameter_number = 124, size = 1},
      s2SwitchNotification = {parameter_number = 82, size = 1},
      dimmingSpeed = {parameter_number = 125, size = 1},
      minimumDimmingValue = {parameter_number = 131, size = 1},
      maximumDimmingValue = {parameter_number = 132, size = 1},
      dimmingMode = {parameter_number = 129, size = 1},
      wiringMode = {parameter_number = 128, size = 1},
      loadType = {parameter_number = 130, size = 1},
      automaticLoadDetection = {parameter_number = 249, size = 1}
    }
  }
}

local preferences = {}

preferences.get_device_parameters = function(zw_device)
  for _, device in pairs(devices) do
    if zw_device:id_match(
      device.MATCHING_MATRIX.mfrs,
      device.MATCHING_MATRIX.product_types,
      device.MATCHING_MATRIX.product_ids) then
      return device.PARAMETERS
    end
  end
  return nil
end

preferences.to_numeric_value = function(new_value)
  local numeric = tonumber(new_value)
  if numeric == nil then -- in case the value is boolean
    numeric = new_value and 1 or 0
  end
  return numeric
end

return preferences
