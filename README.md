
a system  to join docs into a single markdown file
## Installation
- step 1 : Install vibescript 
Install [vibescript](https://github.com/OUIsolutions/VibeScript) if you don't have it yet:

### Linux 
Run the following command to install VibeScript on Linux:

```bash
curl -L https://github.com/OUIsolutions/VibeScript/releases/download/0.32.0/vibescript.out -o vibescript.out && chmod +x vibescript.out && sudo mv vibescript.out /usr/local/bin/vibescript
```

### Linux and macOS
You need to have `gcc` or `clang` installed:

```bash
curl -L https://github.com/OUIsolutions/VibeScript/releases/download/0.35.0/amalgamation.c -o vibescript.c && gcc vibescript.c -o vibescript.out && sudo mv vibescript.out /usr/local/bin/vibescript
```
- step 2 : Install doc_join
```bash
vibescript add_script --file  https://github.com/Igreja-ChimpStack/Doc-Join/releases/download/0.1.0/doc_join.lua doc_join
```



## Usage
```bash
 doc_join --entries docs README.md --output teste.md 
```

