# Flow

```mermaid
graph TD
    Title --> MainMenu
    MainMenu --> SceneIntroduceMainCharactor
    SceneIntroduceMainCharactor --> SceneDeparture
    SceneDeparture --> SceneRemainsEntrance
    SceneRemainsEntrance --> SceneRemainsTrap
    SceneRemainsTrap --> SceneIntroduceSubCharactor
    SceneIntroduceSubCharactor --> SceneRescue
    SceneRescue --> SceneNotice
    SceneNotice --> SceneEndTrue
    SceneEndTrue --> Ending
    Ending --> MainMenu
```
