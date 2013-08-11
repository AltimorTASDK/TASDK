module UnrealScript.TribesGame.GFxTrDevices;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrDevices : GFxObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 124); }
			// WARNING: Property 'HUD' has the same name as a defined type!
		}
		bool bNeedsUpdateData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bNeedsUpdateData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
final:
	void Init(GFxMinimapHud H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxMinimapHud*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51039], params.ptr, cast(void*)0);
	}
	GFxObject GetAmmonClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51041], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject GetAmmonPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51043], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void UpdateData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51045], cast(void*)0, cast(void*)0);
	}
	void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51046], cast(void*)0, cast(void*)0);
	}
}
