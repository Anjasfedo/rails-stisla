class TaskPdfGenerator
  require 'prawn'
  require 'prawn/table'

  def initialize(tasks)
    @tasks = tasks
  end

  def render
    Prawn::Document.new do |pdf|
      pdf.text "Tasks Report", size: 30, style: :bold
      pdf.move_down 20

      table_data = [["Title", "Content"]] + @tasks.map { |task| [task.title, task.content] }

      pdf.table(table_data, header: true, width: pdf.bounds.width) do |table|
        table.row(0).font_style = :bold
        table.row(0).background_color = 'cccccc'
        table.row_colors = ['ffffff', 'eeeeee']
        table.cell_style = { borders: [:top, :bottom, :left, :right] }
      end
    end.render
  end
end