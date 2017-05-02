more_printers = [
  {:printerID => '1', :studentID => 'L211072808',
    :reserveTime => '8AM-9AM', :reserveDate => '18-Aug-2017'},
  {:printerID => '2', :studentID => 'L211072809',
    :reserveTime => '8AM-9AM', :reserveDate => '19-Aug-2017'},
  {:printerID => '3', :studentID => 'L211072810',
    :reserveTime => '8AM-9AM', :reserveDate => '20-Aug-2017'},
  {:printerID => '4', :studentID => 'L211072810',
    :reserveTime => '8AM-9AM', :reserveDate => '20-Aug-2017'},
  {:printerID => '5', :studentID => 'L211072810',
    :reserveTime => '8AM-9AM', :reserveDate => '20-Aug-2017'},
  
    
]

more_printers.each do |printer|
  Printer.create!(printer)
end