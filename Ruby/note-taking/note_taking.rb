
require 'tty-prompt'
require 'tty-editor'
require 'fileutils'

class NoteTaker
  def initialize
    @notes_dir = 'notes'
    FileUtils.mkdir_p(@notes_dir) unless File.directory?(@notes_dir)
    @prompt = TTY::Prompt.new
  end

  def run
    loop do
      choose_option
    end
  end

  private

  def choose_option
    option = @prompt.select('Choose an option:', %w[Display Create Edit Delete])

    case option
    when 'Display'
      display_notes
    when 'Create'
      create_note
    when 'Edit'
      edit_notes
    when 'Delete'
      delete_note
    end
  end

  def display_notes
    notes = load_notes
    selection = @prompt.select('Select a note:', notes)

    if selection != 'No notes available'
      note_path = File.join(@notes_dir, selection)
      TTY::Editor.open(note_path)
    end
  end

  def create_note
    note_name = @prompt.ask('Enter a name for the new note:')
    note_path = File.join(@notes_dir, "#{note_name}.md")

    File.write(note_path, '')
    puts "Note '#{note_name}' created successfully!"
  end

  def edit_notes
    notes = load_notes
    selection = @prompt.select('Select a note to edit:', notes)

    if selection != 'No notes available'
      note_path = File.join(@notes_dir, selection)
      TTY::Editor.open(note_path)
    end
  end

  def delete_note
    notes = load_notes
    selection = @prompt.select('Select a note to delete:', notes)

    if selection != 'No notes available'
      note_path = File.join(@notes_dir, selection)
      File.delete(note_path)
      puts "Note '#{selection}' deleted successfully!"
    end
  end

  def load_notes
    Dir.chdir(@notes_dir) do
      notes = Dir.glob('*.md')
      notes.empty? ? ['No notes available'] : notes
    end
  end
end

NoteTaker.new.run
