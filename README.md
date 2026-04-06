

### ## 🏗️ The Core Logic
The system works by listening for a **PlayerAdded** event. Every time a new player joins the server, the script must create a specific folder and assign it to that player.

* **The Folder Name:** The folder **must** be named exactly `"leaderstats"` (all lowercase). If you name it "Stats" or "Score," the Roblox core UI won't recognize it, and the board won't appear on the top-right of the screen. 📂
* **Parenting:** This folder is placed inside the `Player` object. This tells the game: *"Hey, these values belong specifically to this person!"* 👤


### ## 💎 Adding Emojis to the Display
Emojis are treated as **Strings** within the script. When you name the variables that track stats (like Gold, Level, or Kills), you can paste emojis directly into the `Name` property.

* **Visual Appeal:** Instead of just "Gems," you use `"💎 Gems"`.
* **Column Formatting:** The Roblox UI will render the emoji right next to the text in the header of the leaderboard. 
* **Encoding:** Roblox supports **UTF-8 encoding**, which means most standard emojis from your keyboard or a copy-paste site will work perfectly fine. ✨


### ## 📈 Types of Values
You can choose different "containers" for your data depending on what you are tracking:

| Value Type | Use Case | Emoji Example |
| :--- | :--- | :--- |
| **IntValue** | Whole numbers (Coins, XP) | `💰 Coins` |
| **NumberValue** | Decimals (Time played, Speed) | `⚡ Speed` |
| **StringValue** | Text (Rank names, Titles) | `👑 Rank` |

---

### ## 🛠️ How it Functions During Gameplay
Once the script creates these values with emojis, they aren't just for show. They act as the "Source of Truth" for the player's progress:

1.  **Data Tracking:** When a player touches a coin, a separate script finds the `leaderstats` folder and adds `+1` to the `💰 Coins` value. 🪙
2.  **Real-Time Updates:** As soon as the value changes in the script, the leaderboard UI updates **instantly** for everyone in the server to see. 🚀
3.  **Referencing:** Because the names have emojis (e.g., `["🍎 Apples"]`), you have to use special brackets in your code to find them, since the game needs to be sure it's looking for that exact symbol.
### ## ⚠️ Pro-Tip: Data Persistence
By itself, a leaderstats script is **volatile**. This means if the player leaves and comes back, their 🏆 **Wins** or ⭐ **Level** will reset to zero. To keep those emojis and numbers saved, you would usually connect this logic to a **DataStore** so the player's progress is remembered forever! 💾
