module UnrealScript.UTGame.UTEntryHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.HUD;

extern(C++) interface UTEntryHUD : HUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTEntryHUD")()); }
	private static __gshared UTEntryHUD mDefaultProperties;
	@property final static UTEntryHUD DefaultProperties() { mixin(MGDPC!(UTEntryHUD, "UTEntryHUD UTGame.Default__UTEntryHUD")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostRender;
		public @property static final ScriptFunction PostRender() { mixin(MGF!("mPostRender", "Function UTGame.UTEntryHUD.PostRender")()); }
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
}
