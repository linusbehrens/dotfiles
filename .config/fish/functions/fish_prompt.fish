function fish_prompt
    # ── Farben ────────────────────────────────
    set -l color_cwd (set_color cyan)
    set -l color_reset (set_color normal)

    # ── aktuelles Verzeichnis ─────────────────
    printf '%s%s%s' $color_cwd (prompt_pwd) $color_reset

    # ── Git-Segment ───────────────────────────
    set -l git_seg (__fish_git_prompt \
        --always-show           \
        --branch-name           \
        --dirty-char '✗'        \
        --staged-char '●'       \
        --untracked-char '…'    \
        --up-char '⇡'           \
        --down-char '⇣')

    if test -n "$git_seg"
        printf ' (%s)' "$git_seg"
    end

    # ── Zeilenumbruch + Prompt-Symbol ─────────
    printf '\n> '
end
