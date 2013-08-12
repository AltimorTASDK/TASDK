module UnrealScript.Engine.Player;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Player : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Player")); }
	private static __gshared Player mDefaultProperties;
	@property final static Player DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Player)("Player Engine.Default__Player")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSwitchController;
		public @property static final ScriptFunction SwitchController() { return mSwitchController ? mSwitchController : (mSwitchController = ScriptObject.Find!(ScriptFunction)("Function Engine.Player.SwitchController")); }
	}
	@property final auto ref
	{
		int CurrentNetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		// WARNING: Property 'Actor' has the same name as a defined type!
		float PP_ShadowsMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		float PP_MidTonesMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		float PP_HighlightsMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float PP_DesaturationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		int ConfiguredLanSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int ConfiguredInternetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	}
	final void SwitchController(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchController, params.ptr, cast(void*)0);
	}
}
