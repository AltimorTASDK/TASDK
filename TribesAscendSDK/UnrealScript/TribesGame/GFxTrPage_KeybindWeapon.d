module UnrealScript.TribesGame.GFxTrPage_KeybindWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindWeapon : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_KeybindWeapon")); }
	private static __gshared GFxTrPage_KeybindWeapon mDefaultProperties;
	@property final static GFxTrPage_KeybindWeapon DefaultProperties() { mixin(MGDPC("GFxTrPage_KeybindWeapon", "GFxTrPage_KeybindWeapon TribesGame.Default__GFxTrPage_KeybindWeapon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_KeybindWeapon.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
