module UnrealScript.TribesGame.GFxTrDevices;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrDevices : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrDevices")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mGetAmmonClip;
			ScriptFunction mGetAmmonPool;
			ScriptFunction mUpdateData;
			ScriptFunction mUpdate;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrDevices.Init")); }
			ScriptFunction GetAmmonClip() { return mGetAmmonClip ? mGetAmmonClip : (mGetAmmonClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrDevices.GetAmmonClip")); }
			ScriptFunction GetAmmonPool() { return mGetAmmonPool ? mGetAmmonPool : (mGetAmmonPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrDevices.GetAmmonPool")); }
			ScriptFunction UpdateData() { return mUpdateData ? mUpdateData : (mUpdateData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrDevices.UpdateData")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrDevices.Update")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	GFxObject GetAmmonClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmonClip, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject GetAmmonPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmonPool, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void UpdateData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateData, cast(void*)0, cast(void*)0);
	}
	void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, cast(void*)0, cast(void*)0);
	}
}
