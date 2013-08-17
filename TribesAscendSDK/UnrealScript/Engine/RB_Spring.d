module UnrealScript.Engine.RB_Spring;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Spring : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_Spring")); }
	private static __gshared RB_Spring mDefaultProperties;
	@property final static RB_Spring DefaultProperties() { mixin(MGDPC("RB_Spring", "RB_Spring Engine.Default__RB_Spring")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetComponents;
			ScriptFunction mClear;
		}
		public @property static final
		{
			ScriptFunction SetComponents() { mixin(MGF("mSetComponents", "Function Engine.RB_Spring.SetComponents")); }
			ScriptFunction Clear() { mixin(MGF("mClear", "Function Engine.RB_Spring.Clear")); }
		}
	}
	@property final
	{
		auto ref
		{
			float DampMaxForce() { mixin(MGPC("float", 164)); }
			float DampSaturateVel() { mixin(MGPC("float", 160)); }
			UObject.InterpCurveFloat SpringMaxForceTimeScale() { mixin(MGPC("UObject.InterpCurveFloat", 144)); }
			float MaxForceMassRatio() { mixin(MGPC("float", 140)); }
			float SpringMaxForce() { mixin(MGPC("float", 136)); }
			float SpringSaturateDist() { mixin(MGPC("float", 132)); }
			float MinBodyMass() { mixin(MGPC("float", 128)); }
			float TimeSinceActivation() { mixin(MGPC("float", 124)); }
			UObject.Pointer SpringData() { mixin(MGPC("UObject.Pointer", 120)); }
			int SceneIndex() { mixin(MGPC("int", 112)); }
			ScriptName BoneName2() { mixin(MGPC("ScriptName", 104)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Component2'!
			ScriptName BoneName1() { mixin(MGPC("ScriptName", 92)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Component1'!
		}
		bool bEnableForceMassRatio() { mixin(MGBPC(116, 0x2)); }
		bool bEnableForceMassRatio(bool val) { mixin(MSBPC(116, 0x2)); }
		bool bInHardware() { mixin(MGBPC(116, 0x1)); }
		bool bInHardware(bool val) { mixin(MSBPC(116, 0x1)); }
	}
final:
	void SetComponents(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent1, ScriptName InBoneName1, Vector Position1, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent2, ScriptName InBoneName2, Vector Position2)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = InComponent1;
		*cast(ScriptName*)&params[4] = InBoneName1;
		*cast(Vector*)&params[12] = Position1;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[24] = InComponent2;
		*cast(ScriptName*)&params[28] = InBoneName2;
		*cast(Vector*)&params[36] = Position2;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetComponents, params.ptr, cast(void*)0);
	}
	void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Clear, cast(void*)0, cast(void*)0);
	}
}
