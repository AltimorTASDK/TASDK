module UnrealScript.TribesGame.GFxTrPage_KeybindHotkeys;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindHotkeys : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindHotkeys")); }
	private static __gshared GFxTrPage_KeybindHotkeys mDefaultProperties;
	@property final static GFxTrPage_KeybindHotkeys DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindHotkeys", "GFxTrPage_KeybindHotkeys TribesGame.Default__GFxTrPage_KeybindHotkeys")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindHotkeys.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
