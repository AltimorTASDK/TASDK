module UnrealScript.TribesGame.GFxTrDevices;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrDevices : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrDevices")()); }
	private static __gshared GFxTrDevices mDefaultProperties;
	@property final static GFxTrDevices DefaultProperties() { mixin(MGDPC!(GFxTrDevices, "GFxTrDevices TribesGame.Default__GFxTrDevices")()); }
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
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.GFxTrDevices.Init")()); }
			ScriptFunction GetAmmonClip() { mixin(MGF!("mGetAmmonClip", "Function TribesGame.GFxTrDevices.GetAmmonClip")()); }
			ScriptFunction GetAmmonPool() { mixin(MGF!("mGetAmmonPool", "Function TribesGame.GFxTrDevices.GetAmmonPool")()); }
			ScriptFunction UpdateData() { mixin(MGF!("mUpdateData", "Function TribesGame.GFxTrDevices.UpdateData")()); }
			ScriptFunction Update() { mixin(MGF!("mUpdate", "Function TribesGame.GFxTrDevices.Update")()); }
		}
	}
	@property final
	{
		auto ref
		{
			WorldInfo ThisWorld() { mixin(MGPC!("WorldInfo", 124)()); }
			// WARNING: Property 'HUD' has the same name as a defined type!
		}
		bool bNeedsUpdateData() { mixin(MGBPC!(128, 0x1)()); }
		bool bNeedsUpdateData(bool val) { mixin(MSBPC!(128, 0x1)()); }
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
