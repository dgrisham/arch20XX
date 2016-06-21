music script
============

features
--------

### primary

-   syncing
    -   rsync + beet import might be weird, or might work out quite nicely. test
        commutation and such (e.g. `beet import` on server, then `rsync` to
        client, then client `beet import`, then further `rsyncs`/etc.)
        -   just update `library.blb` instead of re-importing? will also need to
            figure out the best way to know if importing something that already
            exists

### secondary

-   'flatten' feature (take all linked songs in library and replace with actual
    files)

useful commands
---------------

a.  download everything except for Devin Townsend (figure out how to incorporate
    w/ beets?)

`rsync -rtpszPD --exclude="Devin Townsend" xps:"/home/musicadmin/queue/*" ~/music/queue`

-   (to extend to multiple artists, just include additional `--exclude=<artist>`
    arguments)

b.  import all artists *excluding* Kanye West and Devin Townsend

`beet import ^(Kanye West|Devin Townsend)`

-   probably a lot of potential extensions here (import all *except* certain
    genre(s)? that'll be different)

other notes
-----------

-   cmus
    -   `library` and `queue` folders shouldn't both be imported to cmus, unless
        cmus can easy update it's track locations (but probably better to just
        never import `library` and only import `queue`)
        -   start cmus `library` by default? figure out how to do
-   beets
    -   find best way to get around beets roadblocks, but not to a point that it
        has a good chance of being detrimental to the user (e.g. maybe
        automatically 'Apply' if importing files that have already been imported
        with beets before, but *don't* automatically select the first suggestion
        from musicbrainz (unless the match is >95% or something?)
    -   figure out this `asciify` mess


vim
===

-   get down different `map` functions, maybe convenient combinations of shiz
    (e.g. `dA`)
-   vim colorscheme formatter (haskell?) (and general config formatter as well? bigger
    project, chill)


keyboard stuff
==============

-   global split settings (sync between tmux, i3, vim (netrw))
    -   not necessarily flowing between these programs, but just global
        definitions for horizontal/vertical

