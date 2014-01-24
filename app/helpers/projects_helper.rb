module ProjectsHelper
def show_project_background
    "background:transparent url(#{@project.background}); background-size: cover; background-repeat: no-repeat;"
end
end
