module UnrealScript.TribesGame.GFxTrPage_KeybindSpecInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecInterface : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindSpecInterface")); }
	private static __gshared GFxTrPage_KeybindSpecInterface mDefaultProperties;
	@property final static GFxTrPage_KeybindSpecInterface DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindSpecInterface", "GFxTrPage_KeybindSpecInterface TribesGame.Default__GFxTrPage_KeybindSpecInterface")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindSpecInterface.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
