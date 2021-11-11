This helper is designed to be a collection of new mechanics based on suggestions from the community, as well as a place to put any random ideas that we have. If you have any ideas for new mechanics/entities that you want to see implemented, let us know, and if it sounds cool/doable we'll add it to the collection.  
You can find us in the [Celeste Discord](https://discord.gg/celeste) **@catapillie**, **@Nikko**, **@coloursofnoise**, **@Viv** and **@🌟Luna🌟**.  
  
The current list of included mechanics:  


*   **Dream Refill** - A special refill that once collected, allows the player to dash through any solid, except for dream blocks which will kill them. You can specify a custom respawn time if you want to, using the _"respawnTime"_ option.



 

*   **Attached Wall Booster** - A wall booster that can be attached to a moving solid.
*   **Crystal Heart Shards** - A crystal heart which is broken into pieces to can be scattered around a room, requiring the player to dash into each piece individually, in order for the heart to reform at a specified location, and allow proper collection. Also ships with a plugin for a sharded version of the **AdventureHelper Custom Heart**, which requires [Adventure Helper v.1.4.4](https://gamebanana.com/gamefiles/9807) or higher. If you don't have it installed, this plugin will not show up.


*   **Timed Trigger Spikes** - Basically the same as regular Trigger Spikes, but coming off withing a specified amount of time. They also support a _"grouping"_ attribute, which requires [max480's Helping Hand](https://gamebanana.com/gamefiles/11423), and a _"rainbow"_ attribute that requires [Viv's Helper](https://gamebanana.com/gamefiles/12484).

*   **Reset State Crystal** - This refill entity will put you back in the default player state when you collect it, essentially getting kicked out of your previous state. For example, collecting it while being in the feather state will just turn you back to the simple player state.
*   **Shielded Refill** - Simple green and pink refills that need to be dashed into to be collected, since they're in a bubble. Not dashing will bounce you off, without regiving you any dash. You can untick the _"bubble repell"_ mode, and instead of getting bounced off, you'll just go through the bubble, without collecting anything.
*   **Melvin** - It's a Kevin-like entity, but it wants to kill you. It's completely static, but looks for you on all four sides, until it finds you, no matter how far away you are. When it sees you, it'll basically "dash-attack" towards you, like a Kevin does. Don't worry, it can't see you if you're behind tiles or basically anything that's solid. Seeker Barriers can act as a spot to hide for you, but on top of that, Melvins can't go through them. Use it to your advantage! You can dash into it like a Kevin, but only on its "weak" sides, which appear red-open. You can select which sides are weak using the _"weakTop"_, _"weakBottom"_, _"weakLeft"_ and _"weakRight"_ attributes.
*   **Dream Booster** - Similar to the vanilla red booster, this one goes through solid tiles and blocks, by following a segment, and releasing the player upon reaching its path's end. You cannot dash out of the bubble while you are travelling inside solid objects. The _"hidePath"_ option allows you to hide the segment path of the booster, revealing it when the bubble is entered, which will play an alternative audio sound with a cue.
*   **Player Bubble Region** - A rectangular region that will put the player entering it into the bubble state and move it back to a defined node, following the path of a curve (with a control node).

*   **Dream Jellyfish** - This is basically the same as regular jellyfishes, but has the dream block appearance, meaning that you can dreamdash through them. You can dash through them while grabbing them, by dashing in one of the three up directions (up or diagonally up), and still regrab it after dreamdashing through it by holding grab. Once you dreamdash through them, you need to let it touch the ground, hit a spring, or do it yourself for it to refill.


*   **Music Param Trigger** - A trigger that sets one or more FMOD parameters of the music event to a specific value when entering it. When leaving the trigger, the parameters are set to another specified value. Used to manipulate audio effects only when you are standing in the trigger.

  
  
To use this helper as part of your map, put the text below into the `Dependencies:` section of your everest.yaml:  

```yaml
- Name: CommunalHelper
  Version: 1.9.4
```