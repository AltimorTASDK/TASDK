module UnrealScript.TribesGame.TrContentLoader;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrContentLoader : UObject
{
public extern(D):
final:
	bool StartLoadingDeviceContentPackage(ScriptClass WeaponClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77166], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartLoadingPlayerSkin(int ClassId, int skinId, bool bLoad1PData)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = skinId;
		*cast(bool*)&params[8] = bLoad1PData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78159], params.ptr, cast(void*)0);
	}
}
