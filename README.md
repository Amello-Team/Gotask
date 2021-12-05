<h1 align="center"> The CLI To-Do List | Gotask by Yaonkey </h1>

## :crystal_ball: Highlights

- For terminal lovers - do things faster with keyboard shortcuts
- Markdown lovers, feel at :house:! You'll see markdown everywhere.
- Full featured (almost) - Projects, Tasks, due-dates, task notes and etc...
- Task note editor with markdown syntax highlighting
- Full mouse support

## :dart: Roadmap

- [x] Create Project
- [x] Delete Project
- [ ] Edit Project
- [x] Create Task (under project)
- [x] Set Task due date (as `yyyy-mm-dd`) with shortcut
- [x] Set Task due date with quick input buttons (today, +1 day, -1 day)
- [x] Update Task Title
- [x] Tasklist items should indicate status (done, pending, overdue) using colors
- [x] Export Tasks (copy title, dueDate and description to clipboard as Markdown)
- [ ] Pin Tasks
- [ ] Set priority
- [x] Shortcut for Adding new Project and Task
- [x] Global shortcuts for jumping to Projects or Tasks panel anytime
- [x] Cleanup all completed tasks of project
- [x] Task note editor should syntax highlight (markdown) and line numbers  
- [x] Status bar for common shortcuts
- [x] Status bar should display success/error message of actions
- [x] Status bar may display quick tips based on focused element
- [x] Dynamic lists
  - Today - due today and overdue
  - Tomorrow
  - Upcoming -> due in next 7 days
  - Unscheduled -> tasks without due date
- [ ] Import from external files
- [ ] Time tracking (Pomodoro tracking)

## :rocket: Ready for action (installing and running)

You can build **Gotask** for any platforms:

- Windows (amd64)
- Linux (amd64/arm64)
- Darwin (amd64)

Installer usage:

```bash
chmod +x ./build.sh
./build.sh
```

And input `y` when asked to install program globally for Linux (amd64) platform.

Done! *Manage your tasks your way!*

## :keyboard: Keyboard shortcuts

Shortcut key for a pane/element will be **marked with underline**.

Some shortcuts are global, some are contextual.
Contextual shortcuts will be applied according to focused pane/element.  
You'll see a currently focused pane bordered with double line.

In case writing in a text input (e,g, new project/task, due date), you have to `Enter` to submit/save.

| Context            | Shortcut            | Action                                               |
| ---                | :---:               | ---                                                  |
| Global             | `p`                 | Go to Project list                                   |
| Global             | `t`                 | Go to Task list                                      |
| Projects           | `n`                 | New Project                                          |
| Projects           | `↑`/`k`/`Shift+Tab` | Go up in project list                                |
| Projects           | `↓`/`j`/`Tab`       | Go down in project list                              |
| Tasks              | `n`                 | New Task                                             |
| Tasks              | `Esc`/`h`           | Go back to Projects Pane                             |
| Tasks              | `↑`/`k`/`Shift+Tab` | Go up in task list                                   |
| Tasks              | `↓`/`j`/`Tab`       | Go down in task list                                 |
| Tasks              | `c`                 | Clear completed tasks                                |
| Tasks              | `d`                 | Delete Project                                       |
| Task Detail        | `Esc`/`h`           | Go back to Tasks Pane                                |
| Task Detail        | `Space`             | Toggle task as done/pending                          |
| Task Detail        | `d`                 | Set Due date                                         |
| Task Detail        | `o`                 | Set Due date to today                                |
| Task Detail        | `+`                 | Due date plus 1                                      |
| Task Detail        | `-`                 | Due date minus 1                                     |
| Task Detail        | `↓`/`↑`             | Scroll Up/Down the note editor                       |
| Task Detail        | `e`                 | Activate note editor for modification                |
| Task Detail        | `v`                 | Edit task details in external editor (default `vim`) |
| Task Detail        | `r`                 | Rename Task Title                                    |
| Task Detail        | `x`                 | Export Task to clipboard                             |
| Active Note Editor | `Esc`               | Deactivate note editor and save content              |

**Tips about using shortcuts efficiently:**  

The interface has 3 primary panels

1. [**P**]rojects/Task lists
2. [**T**]asks of selected project or Tasklist
3. [**D**]etails/actions of selected Project or Task

The following diagram shows navigation shortcuts between the panels.

```schema
+------+----------------------+-----------------------+
|  P   |         T            |         D             |
|      |                      |                       |
|    Enter=>    ↓   ↑        Enter=>                  |
|      |       /   /          |                       |
|   <=Esc      j   k        <=Esc                     |
|      |                      |                       |
+------+----------------------+-----------------------+
```

So, what it's trying to visualize is -

- Selecting an item with `Enter` will move you to right panel. That means -
  - Selecting a Project will load it's tasks and move to Tasks panel
  - Selecting a Task will load task detail and move to Detail panel
- Use `Esc` to move back to left panel. From Details to Tasks to Projects.
- To navigate a list (Project list or Task list)
  - Use `↓` or `j` or `Tab` to go down
  - Use `↑` or `k` or `Shift+Tab` to go up  

Some More hints:

- If you are a vim user, think like -`j`/`k` for up/down list and `h` for go left
- Think `Esc` as a "step back" - to previous pane in most cases.
- When you're in a list (Projects or Tasks), `Enter` will load currently selected item.
- After creating new Project, focus will automatically move to Tasks. Start adding tasks immediately by pressing `n`.
- After creating new Task, focus will stay in "new task" input. So that you can add tasks quickly one after another.
- After creating new Task, Press `Esc` when you're done creating tasks.

## :hammer_and_wrench: Builds with

- Made with :heart: and [golang](https://golang.org/) 1.17 *(you don't need golang to run it)*
- Designed with [tview](https://github.com/rivo/tview) - interactive widgets for terminal-based UI
- Task Note editor made with [femto](https://github.com/pgavlin/femto)  
- Datastore is [storm](https://github.com/asdine/storm) - a powerful toolkit for [BoltDB](https://github.com/etcd-io/bbolt)

---

## :bulb: You may ask

### :question: Where is the data stored? Can I change the location?

By default, it will try to create a db file in you home directory.

But as a geek, you may try to put it different location (e,g, in your dropbox for syncing).
In that case, just mention `DB_FILE` as an environment variable.  

```bash
DB_FILE=~/dropbox/geek-life/default.db geek-life
```

**UPDATE:** For Windows users, setting ENV variable is not so straight forward.
So, added a flag `--db-file` or `-d` to specify DB file path from command line easily.

 ```bash
geek-life --db-file=D:\a-writable-dir\tasks.db
```

### :question: How can I suggest a feature?

Just [post an issue](https://github.com/Amello-Team/Gotask/issues/new) describing your desired feature
and select `feature` label.
