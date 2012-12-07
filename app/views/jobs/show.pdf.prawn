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

items = [["ID","#{I18n.t(:item_name)}","#{I18n.t(:pieces)}","#{I18n.t(:item_bp)}","#{I18n.t(:ingredient)}"]] + @item.map do |item|
	if item.round_square=="#{I18n.t(:round)}"
				[
		item.identification,
		item.name,
		item.pieces,
		item.blue_print_number,
		"#{item.rounds[0].material} #{item.rounds[0].length}X#{item.rounds[0].diameter}Ф - #{item.rounds[0].pieces}P"
		]
	elsif item.round_square=="#{I18n.t(:square)}"
		[
		item.identification,
		item.name,
		item.pieces,
		item.blue_print_number,
		"#{item.squares[0].material} #{item.squares[0].thickness}X#{item.squares[0].width}X#{item.squares[0].length} - #{item.squares[0].pieces}P"
		]
	else
		[
		item.identification,
		item.name,
		item.pieces,
		item.blue_print_number,
		"#{I18n.t(:inventory)}"
		]
	end
end

pdf.table items, :cell_style => {:size => 20}