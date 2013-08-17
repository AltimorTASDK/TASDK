module UnrealScript.TribesGame.GFxDeviceAmmoCount;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxDeviceAmmoCount : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxDeviceAmmoCount")); }
	private static __gshared GFxDeviceAmmoCount mDefaultProperties;
	@property final static GFxDeviceAmmoCount DefaultProperties() { mixin(MGDPC("GFxDeviceAmmoCount", "GFxDeviceAmmoCount TribesGame.Default__GFxDeviceAmmoCount")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInit;
		public @property static final ScriptFunction Init() { mixin(MGF("mInit", "Function TribesGame.GFxDeviceAmmoCount.Init")); }
	}
	@property final auto ref GFxObject AmmoCountTF() { mixin(MGPC("GFxObject", 380)); }
	final void Init(LocalPlayer* pPlayer = null)
	{
		ubyte params[4];
		params[] = 0;
		if (pPlayer !is null)
			*cast(LocalPlayer*)params.ptr = *pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
}
