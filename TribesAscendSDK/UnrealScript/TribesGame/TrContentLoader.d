module UnrealScript.TribesGame.TrContentLoader;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrContentLoader : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrContentLoader")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStartLoadingDeviceContentPackage;
			ScriptFunction mStartLoadingPlayerSkin;
		}
		public @property static final
		{
			ScriptFunction StartLoadingDeviceContentPackage() { return mStartLoadingDeviceContentPackage ? mStartLoadingDeviceContentPackage : (mStartLoadingDeviceContentPackage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrContentLoader.StartLoadingDeviceContentPackage")); }
			ScriptFunction StartLoadingPlayerSkin() { return mStartLoadingPlayerSkin ? mStartLoadingPlayerSkin : (mStartLoadingPlayerSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrContentLoader.StartLoadingPlayerSkin")); }
		}
	}
final:
	bool StartLoadingDeviceContentPackage(ScriptClass WeaponClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartLoadingDeviceContentPackage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartLoadingPlayerSkin(int ClassId, int skinId, bool bLoad1PData)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = skinId;
		*cast(bool*)&params[8] = bLoad1PData;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartLoadingPlayerSkin, params.ptr, cast(void*)0);
	}
}
