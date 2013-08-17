module UnrealScript.TribesGame.GFxTrPage_KeybindMovement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindMovement : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindMovement")); }
	private static __gshared GFxTrPage_KeybindMovement mDefaultProperties;
	@property final static GFxTrPage_KeybindMovement DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindMovement", "GFxTrPage_KeybindMovement TribesGame.Default__GFxTrPage_KeybindMovement")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindMovement.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
