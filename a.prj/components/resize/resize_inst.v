// Example instance of the top level module for: 
//     resize
// To include this component in your design, include: 
//     resize.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

resize resize_inst (
  // Interface: clock (clock end)
  .clock               ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn              ( ), // 1-bit reset_n input
  // Interface: original_image (avalon_streaming sink)
  .original_image_data ( ), // 32-bit data input
  .original_image_ready( ), // 1-bit ready output
  .original_image_valid( ), // 1-bit valid input
  // Interface: resized_image (avalon_streaming source)
  .resized_image_data  ( ), // 32-bit data output
  .resized_image_ready ( ), // 1-bit ready input
  .resized_image_valid ( ), // 1-bit valid output
  // Interface: call (conduit sink)
  .start               ( ), // 1-bit valid input
  .busy                ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                ( ), // 1-bit valid output
  .stall               ( ), // 1-bit stall input
  // Interface: ratio (conduit sink)
  .ratio               ( ), // 32-bit data input
  // Interface: rows (conduit sink)
  .rows                ( ), // 32-bit data input
  // Interface: cols (conduit sink)
  .cols                ( )  // 32-bit data input
);
