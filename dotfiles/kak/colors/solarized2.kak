# solarized theme

%sh{
    # Base color definitions
    base03="rgb:002b36"
    base02="rgb:073642"
    base01="rgb:586e75"
    base00="rgb:657b83"
    base0="rgb:839496"
    base1="rgb:93a1a1"
    base2="rgb:eee8d5"
    base3="rgb:fdf6e3"

    white="rgb:cacaff"
    yellow="rgb:cccc00"
    orange="rgb:eb6b2b"
    red="rgb:dc322f"
    magenta="rgb:c83682"
    violet="rgb:6c71c4"
    blue="rgb:3476d2"
    cyan="rgb:2ac1c0"
    green="rgb:859900"
    grey_light="rgb:989898"
    grey_medium="rgb:707070"
    grey_dark="rgb:3a3a3a"

    echo "
        # then we map them to code
        face value      ${orange}
        face type       ${cyan}
        face identifier ${blue}
        face string     ${magenta}
        face keyword    ${green}
        face operator   ${blue}
        face attribute  ${violet}
        face comment    ${grey_medium}
        face meta       ${grey_light}
        face builtin    ${cyan}

        # and markup
        face title      ${yellow}
        face header     ${blue}
        face bold       ${base1}
        face italic     ${base2}
        face mono       ${base3}
        face block      ${violet}
        face link       ${magenta}
        face bullet     ${orange}
        face list       ${yellow}

        # and built in faces
        face Default            ${white}
        face PrimarySelection   ${yellow},${grey_dark}
        face SecondarySelection black,${grey_medium}
        face PrimaryCursor      black,${white}
        face SecondaryCursor    black,${grey_light}
        face LineNumbers        ${base0},${base03}
        face LineNumberCursor   ${yellow},${base03}+b
        face MenuForeground     ${yellow},black
        face MenuBackground     black,${grey_light}
        face MenuInfo           ${base03}
        face Information        ${base02},${base1}
        face Error              ${white},red
        face StatusLine         default,${base02}
        face StatusLineMode     ${orange}
        face StatusLineInfo     ${cyan}
        face StatusLineValue    ${green}
        face StatusCursor       ${base00},${base3}
        face Prompt             yellow
        face MatchingChar       default+b
        face BufferPadding      ${base01},black
    "
}
