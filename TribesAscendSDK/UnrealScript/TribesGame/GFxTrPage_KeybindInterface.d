module UnrealScript.TribesGame.GFxTrPage_KeybindInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindInterface : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindInterface")); }
	private static __gshared GFxTrPage_KeybindInterface mDefaultProperties;
	@property final static GFxTrPage_KeybindInterface DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindInterface", "GFxTrPage_KeybindInterface TribesGame.Default__GFxTrPage_KeybindInterface")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindInterface.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
