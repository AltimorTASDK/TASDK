module UnrealScript.TribesGame.GFxTrPage_KeybindCommunication;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindCommunication : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_KeybindCommunication")()); }
	private static __gshared GFxTrPage_KeybindCommunication mDefaultProperties;
	@property final static GFxTrPage_KeybindCommunication DefaultProperties() { mixin(MGDPC!(GFxTrPage_KeybindCommunication, "GFxTrPage_KeybindCommunication TribesGame.Default__GFxTrPage_KeybindCommunication")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_KeybindCommunication.Initialize")()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
