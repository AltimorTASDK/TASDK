module UnrealScript.UTGame.GFxUDKFrontEnd_InstantAction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

extern(C++) interface GFxUDKFrontEnd_InstantAction : GFxUDKFrontEnd_LaunchGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_InstantAction")); }
	private static __gshared GFxUDKFrontEnd_InstantAction mDefaultProperties;
	@property final static GFxUDKFrontEnd_InstantAction DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_InstantAction", "GFxUDKFrontEnd_InstantAction UTGame.Default__GFxUDKFrontEnd_InstantAction")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewActivated;
			ScriptFunction mOnStartGame_Confirm;
		}
		public @property static final
		{
			ScriptFunction OnViewActivated() { mixin(MGF("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_InstantAction.OnViewActivated")); }
			ScriptFunction OnStartGame_Confirm() { mixin(MGF("mOnStartGame_Confirm", "Function UTGame.GFxUDKFrontEnd_InstantAction.OnStartGame_Confirm")); }
		}
	}
final:
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartGame_Confirm, cast(void*)0, cast(void*)0);
	}
}
