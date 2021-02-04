# dWorkspace

<p align="center" width="100%"><img src="./.assets/dworkspacelogo.svg" width="200" alt="workspace"/></p>
<p align="center" width="100%">Standard structure for Dev directories!</p>


### How to run

```bash
1. cd <somehere>; git clone https://github.com/bmalbusca/dworkspace.git
2. cp dworkspace/workspaces.sh <your-target-dir>
3. cd <your-target-dir>; bash ./workspaces.sh

```
> the script also have some usage tips

### The result
```bash

workspaces
├── documents           > Used to save Markdown journals
│   ├── notes           -----> Save researches, articles and other notes
│   └── publish         -----> Add your Markdown notes for future blog publishing
├── <external-work-1>
├── <external-work-2>
├── <external-work-3>
└── internal            > Personal code
    ├── lab             ----> Save all your learning stuff and code tutorials
    │   ├── foo         ----> Random code
    │   ├── <framework-1>
    │   ├── <framework-2>
    │   └── <language-1>
    └── projects        > Personal (big) projects
        ├── current
        ├── late-2019
        └── late-2020

```
