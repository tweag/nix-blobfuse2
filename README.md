# Build blobfuse2 with Nix

blobfuse2 is currently available in preview.
It can be installed using artifacts shared in releases.
Unfortunately, not all systems can use these artifacts to install it.

This repo stores a Nix flake to build and use blobfuse2 using [Nix](https://nixos.org/).

Instructions assume you have enabled `nix-command` and `flakes`.
See the docs:
- [enable nix-command](https://nixos.wiki/wiki/Nix_command)
- [enable flakes](https://nixos.wiki/wiki/Flakes)

## How to use

To enter a shell with blobfuse2 available:

```shell
$ nix shell github:tweag/nix-blobfuse2#blobfuse2
```

## Development 

To build the binaries to a local `result/` folder:

```shell
$ nix build 
```
