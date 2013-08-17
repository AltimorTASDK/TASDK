module UnrealScript.TribesGame.GFxTrPage_KeybindGameplay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindGameplay : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_KeybindGameplay")()); }
	private static __gshared GFxTrPage_KeybindGameplay mDefaultProperties;
	@property final static GFxTrPage_KeybindGameplay DefaultProperties() { mixin(MGDPC!(GFxTrPage_KeybindGameplay, "GFxTrPage_KeybindGameplay TribesGame.Default__GFxTrPage_KeybindGameplay")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_KeybindGameplay.Initialize")()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
