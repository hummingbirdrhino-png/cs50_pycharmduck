# ddb50 — CS50 Duck Debugger for PyCharm

A port of CS50's [ddb50 VS Code extension](https://github.com/cs50/ddb50.vsix) to JetBrains IDEs (PyCharm, IntelliJ, etc.).

## Features

- 🦆 Rubber duck debugging powered by OpenAI GPT-4o
- 💬 Persistent chat history within a session (6-hour window, matching the original)
- ⚡ Energy bar — 10 questions per session, regenerates 1 every 3 minutes
- 🌗 Automatic dark/light theme support
- 📥 Download chat history to a `.txt` file
- 🗑️ Clear chat history with confirmation

## Requirements

- PyCharm 2023.3+ (or any JetBrains IDE 2023.3+)
- Java 17+
- An [OpenAI API key](https://platform.openai.com/api-keys)

## Building from Source

### Prerequisites

- JDK 17 ([download](https://adoptium.net/))
- Git

### Steps

```bash
git clone <this-repo>
cd ddb50-pycharm

# Build the plugin JAR
./gradlew buildPlugin

# The .zip plugin will be at:
# build/distributions/ddb50-pycharm-1.0.0.zip
```

On Windows, use `gradlew.bat` instead of `./gradlew`.

## Installation

1. Build the plugin (see above), or download a pre-built `.zip` from Releases.
2. In PyCharm: **Settings → Plugins → ⚙️ → Install Plugin from Disk...**
3. Select `build/distributions/ddb50-pycharm-1.0.0.zip`
4. Restart PyCharm.

## Configuration

1. Go to **Settings → Tools → CS50 Duck Debugger**
2. Paste your OpenAI API key
3. Optionally change the model (default: `gpt-4o`)

## Usage

- Open the **CS50 Duck** panel from the right sidebar (duck icon)
- Type your question and press **Enter** to send
- **Shift+Enter** or **Ctrl+Enter** inserts a newline
- Use the toolbar buttons to clear or download chat history

## Differences from the VS Code version

| Feature | VS Code | PyCharm |
|---|---|---|
| AI backend | cs50.ai (proxied OpenAI) | OpenAI directly (your key) |
| Auth | CS50/GitHub token | OpenAI API key |
| Markdown rendering | markdown-it + highlight.js | Built-in HTML renderer |
| Code highlighting | highlight.js | Basic monospace |
| Session storage | localStorage | In-memory (per IDE session) |

## License

GPL-3.0 — same as the original CS50 extension.
