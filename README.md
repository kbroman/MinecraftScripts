## minecraft scripts

I'm using a Raspberry Pi 4 (with 4 GB RAM) to run a minecraft server.
I followed the instructions in [R Programming with Minecraft](https://kbroman.org/miner_book).
These are scripts that I'm using.

- `start.sh` is used to start the minecraft server (in `/home/pi/minecraft`)

- `start_tmux.sh` checks if there is a tmux session named
  "`minecraft`" and if not it starts one running `start.sh`

- I use a cron job (with `crontab -e`) to check every minute if there's a tmux
  minecraft session, and if not start one (mostly to get it started at
  boot).

- Use `tmux a -t minecraft` to enter that session and `C-\ d` to exit
  while letting it continue to run.

---

main source:

- [this answer](https://unix.stackexchange.com/a/511601) helped with
  tmux/cron
