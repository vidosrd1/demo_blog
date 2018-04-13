
guard 'livereload' do
  extensions = [
    css: :css,
    scss: :css,
    js: :js,
    coffee: :js,
    html: :html,
    png: :png,
    gif: :gif,
    jpg: :jbg,
    jbeg: :jbeg,
  ]

rail_view_exts = %w(erb haml slim)

compiled_exts = extensions.values.uniq
watch(%r{public/.+\.(#{compiled_exts * '|'})})

extensions.each do |ext, type|
  watch(%r{
    (?:app|vendor)
    (?:/assets/\w+(?<path>[^.]+)
     (?<ext>\.#{ext}))
    (?:\.\w+|$)
    }x) do |n|
    path = m[1]
    "/assets/#{path}.#{type}"
    #})
  end
end

watch(%r{app/views/.+\.(#{rails_view_exts * '|'})$})
watch(%r{app/helpers/.+\.rb})
watch(%r{config/locales/.+\.yml})

end 
