module UnrealScript.UTGame.GFxUDKFrontEnd_InstantAction;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

extern(C++) interface GFxUDKFrontEnd_InstantAction : GFxUDKFrontEnd_LaunchGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_InstantAction")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewActivated;
			ScriptFunction mOnStartGame_Confirm;
		}
		public @property static final
		{
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InstantAction.OnViewActivated")); }
			ScriptFunction OnStartGame_Confirm() { return mOnStartGame_Confirm ? mOnStartGame_Confirm : (mOnStartGame_Confirm = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InstantAction.OnStartGame_Confirm")); }
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
