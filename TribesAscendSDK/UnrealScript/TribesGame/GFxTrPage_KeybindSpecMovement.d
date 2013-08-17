module UnrealScript.TribesGame.GFxTrPage_KeybindSpecMovement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecMovement : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindSpecMovement")); }
	private static __gshared GFxTrPage_KeybindSpecMovement mDefaultProperties;
	@property final static GFxTrPage_KeybindSpecMovement DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindSpecMovement", "GFxTrPage_KeybindSpecMovement TribesGame.Default__GFxTrPage_KeybindSpecMovement")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindSpecMovement.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
