# solarized theme

evaluate-commands %sh{
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
    default_text="rgb:bdbdbd"
    black="rgb:111111"
    yellow="rgb:cccc00"
    orange="rgb:eb6b2b"
    red="rgb:dc322f"
    magenta="rgb:c83682"
    violet="rgb:6c71c4"
    blue="rgb:3333d3"
    blue_medium="rgb:7373ca"
    blue_light="rgb:9486ca"
    cyan="rgb:2ac1c0"
    cyan_light="rgb:2aeaea"
    cyan_dark="rgb:2a99c0"
    green="rgb:9f9f00"
    grey_light="rgb:989898"
    grey_medium="rgb:707070"
    grey_dark="rgb:3a3a3a"

    echo "
        # then we map them to code face global value      ${orange}
        face global type       ${blue_medium}
        face global identifier ${blue_light}
        face global string     ${magenta}
        face global keyword    "rgb:f8f8f8"
        face global operator   ${blue}
        face global attribute  ${violet}
        face global comment    ${grey_medium}
        face global meta       ${grey_light}
        face global builtin    ${cyan}

        # and markup
        face global title      ${white}
        face global header     ${cyan_light}
        face global bold       ${cyan_dark}
        face global italic     ${cyan}
        face global mono       ${magenta}
        face global block      ${violet}
        face global link       ${blue_medium}
        face global bullet     ${orange}
        face global list       ${default_text}

        # and built in faces
        face global Default            ${default_text}
        face global PrimarySelection   ${yellow},${grey_dark}
        face global SecondarySelection black,${grey_medium}
        face global PrimaryCursor      black,${white}
        face global SecondaryCursor    black,${grey_light}
        face global LineNumbers        ${base0},black
        face global LineNumberAbsolute ${yellow},${base03}+b
        face global MenuForeground     ${yellow}+b
        face global MenuBackground     white,${black}
        face global MenuInfo           white,${black}
        face global Information        ${base02},${base1}
        face global Error              ${white},red
        face global StatusLine         default,${base02}
        face global StatusLineMode     ${orange}
        face global StatusLineInfo     ${cyan}
        face global StatusLineValue    ${green}
        face global StatusCursor       ${base00},${base3}
        face global Prompt             yellow
        face global MatchingChar       ${white},${grey_dark}
        face global BufferPadding      ${base01}
    "
}
