module UnrealScript.UDKBase.UDKExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface UDKExplosionLight : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKExplosionLight")()); }
	private static __gshared UDKExplosionLight mDefaultProperties;
	@property final static UDKExplosionLight DefaultProperties() { mixin(MGDPC!(UDKExplosionLight, "UDKExplosionLight UDKBase.Default__UDKExplosionLight")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnLightFinished;
			ScriptFunction mResetLight;
		}
		public @property static final
		{
			ScriptFunction OnLightFinished() { mixin(MGF!("mOnLightFinished", "Function UDKBase.UDKExplosionLight.OnLightFinished")()); }
			ScriptFunction ResetLight() { mixin(MGF!("mResetLight", "Function UDKBase.UDKExplosionLight.ResetLight")()); }
		}
	}
	struct LightValues
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKExplosionLight.LightValues")()); }
		@property final auto ref
		{
			UObject.Color LightColor() { mixin(MGPS!(UObject.Color, 12)()); }
			float Brightness() { mixin(MGPS!(float, 8)()); }
			float Radius() { mixin(MGPS!(float, 4)()); }
			float StartTime() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLightFinished__Delegate'!
			ScriptArray!(UDKExplosionLight.LightValues) TimeShift() { mixin(MGPC!(ScriptArray!(UDKExplosionLight.LightValues), 600)()); }
			int TimeShiftIndex() { mixin(MGPC!(int, 596)()); }
			float Lifetime() { mixin(MGPC!(float, 592)()); }
			float HighDetailFrameTime() { mixin(MGPC!(float, 588)()); }
		}
		bool bInitialized() { mixin(MGBPC!(584, 0x2)()); }
		bool bInitialized(bool val) { mixin(MSBPC!(584, 0x2)()); }
		bool bCheckFrameRate() { mixin(MGBPC!(584, 0x1)()); }
		bool bCheckFrameRate(bool val) { mixin(MSBPC!(584, 0x1)()); }
	}
final:
	void OnLightFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pLight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pLight;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLightFinished, params.ptr, cast(void*)0);
	}
	void ResetLight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLight, cast(void*)0, cast(void*)0);
	}
}
