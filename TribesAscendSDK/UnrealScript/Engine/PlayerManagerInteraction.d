module UnrealScript.Engine.PlayerManagerInteraction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Interaction;

extern(C++) interface PlayerManagerInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PlayerManagerInteraction")()); }
	private static __gshared PlayerManagerInteraction mDefaultProperties;
	@property final static PlayerManagerInteraction DefaultProperties() { mixin(MGDPC!(PlayerManagerInteraction, "PlayerManagerInteraction Engine.Default__PlayerManagerInteraction")()); }
}
