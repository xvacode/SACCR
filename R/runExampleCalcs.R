runExampleCalcs <-function(trades)
{
  # calculating the add-on
  Addon_Aggregate <- CalcAddon(trades)
  
  # calculating the RC and the V-c amount
  rc_values <- CalcRC(trades)
  
  # calculating the PFE after multiplying the addon with a factor if V-C<0
  PFE <- CalcPFE(rc_values$V_C, Addon_Aggregate)
  
  # calculating the Exposure-at-Default
  EAD <- CalcEAD(rc_values$RC,PFE)
  
  return(EAD)
}