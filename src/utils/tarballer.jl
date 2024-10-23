function baller(folder)
    tarball = joinpath(DaTARball.path.dirs,basename(folder)*".tar.gz")
    println(tarball)
    GZip.open(tarball, "w") do gz
        tar = Tar.create(folder)
        write(gz, tar)
    end
    return nothing
end
export baller