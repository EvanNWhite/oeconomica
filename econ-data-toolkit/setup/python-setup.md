# Python + Jupyter Setup

**Level:** Beginner
**Prerequisites:** None

## Install Python

1. Download the installer from https://www.python.org/downloads/
2. On the first install screen, **check the box** "Add python.exe to PATH"
   (Windows) — this is the single most commonly skipped step and causes
   most later errors.
3. Click "Install Now" (or "Customize installation" and keep the defaults,
   which include pip and IDLE).
4. Verify it worked: open Command Prompt (Windows) or Terminal (Mac) and run:
   ```
   python --version
   ```
   You should see a version number. If you get "command not found," Python
   wasn't added to PATH — reinstall and check the box, or add it manually.

## Install Jupyter

```
pip install notebook
```

Then run:
```
jupyter notebook
```
This starts a local server (usually at `localhost:8888`) and opens a
notebook interface in your browser.

## Install common packages

```
pip install pandas numpy matplotlib
```

You can also install from inside a notebook cell using `%pip install pandas`.

## Troubleshooting

- **`pip` not recognized** → Python/pip isn't on PATH. Reinstall Python and
  check "Add to PATH," or search "edit environment variables" (Windows) and
  add the Python install folder manually.
- **`%pip install` works but `import` fails** → your notebook kernel isn't
  using the same Python environment. Restart the kernel (Kernel → Restart)
  after installing.
- **Multiple Python versions installed, confusing behavior** → run
  `python --version` and `which python` (Mac/Linux) or `where python`
  (Windows) to see which one is actually being used.
