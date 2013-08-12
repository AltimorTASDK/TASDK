module UnrealScript.TribesGame.GFxDeviceAmmoCount;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxDeviceAmmoCount : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxDeviceAmmoCount")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInit;
		public @property static final ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxDeviceAmmoCount.Init")); }
	}
	@property final auto ref GFxObject AmmoCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
	final void Init(LocalPlayer pPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
}
