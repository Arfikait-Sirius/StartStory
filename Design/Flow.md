# Flow

```mermaid
graph TD
    Title --> MainMenu
    MainMenu --> SceneIntroduceMainCharacter
    SceneIntroduceMainCharacter --> SceneDeparture
    SceneDeparture --> SceneRemainsEntrance
    SceneRemainsEntrance --> SceneRemainsTrap
    SceneRemainsTrap --> SceneIntroduceSubCharacter
    SceneIntroduceSubCharacter --> SceneRescue
    SceneRescue --> SceneNotice
    SceneNotice --> SceneEndTrue
    SceneEndTrue --> Ending
    Ending --> MainMenu
```
