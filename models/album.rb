require_relative('../db/sql_runner')
require_relative('./artist')

class Album

  attr_accessor :title, :genre
  attr_reader :id, :artist_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options ['id']
    @artist_id = options['artist_id'].to_i if options['artist_id']
  end

  def save()
    sql = "INSERT INTO music_albums (
    title,
    genre,
    artist_id )
    VALUES (
    '#{title}',
    '#{genre}',
    #{artist_id}
    )
    RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i
    
  end

  def Album.all()
    sql = "SELECT * FROM music_albums;"
    albums = SqlRunner.run(sql)
    return albums.map { |album| Album.new(album) }
  end


end