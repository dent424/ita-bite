pdf.font("#{Prawn::BASEDIR}/data/fonts/fonts-japanese-mincho.ttf") 

if @job.name 
	pdf.text "#{@job.name}", :size => 50, :spacing => 4, :leading => 10
else
	pdf.text "#{@job.billing}", :size => 50, :spacing => 4, :leading => 10
end

pdf.text "#{@job.client.name}",:size => 30, :spacing => 4, :leading => 10

pdf.text "#{I18n.t(:job_intake)}: #{@job.in_date}", :size => 20, :spacing => 4, :leading => 10
pdf.text "#{I18n.t(:job_target)}: #{@job.target}", :size => 20, :spacing => 4, :leading => 10


items = ["#{I18n.t(:item_name)}","#{I18n.t(:pieces)}","#{I18n.t(:item_bp)}"]

items = [["ID","#{I18n.t(:item_name)}","#{I18n.t(:pieces)}","#{I18n.t(:item_bp)}"]] + @item.map do |item|
	[
	item.identification,
	item.name,
	item.pieces,
	item.blue_print_number	
	]
end

pdf.table items, :cell_style => {:size => 20}