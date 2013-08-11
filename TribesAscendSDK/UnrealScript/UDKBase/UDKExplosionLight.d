module UnrealScript.UDKBase.UDKExplosionLight;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface UDKExplosionLight : PointLightComponent
{
public extern(D):
	struct LightValues
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)&this + 12); }
			float Brightness() { return *cast(float*)(cast(size_t)&this + 8); }
			float Radius() { return *cast(float*)(cast(size_t)&this + 4); }
			float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKExplosionLight.LightValues) TimeShift() { return *cast(ScriptArray!(UDKExplosionLight.LightValues)*)(cast(size_t)cast(void*)this + 600); }
			int TimeShiftIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			float Lifetime() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float HighDetailFrameTime() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
		}
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x2) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x2; } return val; }
		bool bCheckFrameRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
		bool bCheckFrameRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34820], params.ptr, cast(void*)0);
	}
	void ResetLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34830], cast(void*)0, cast(void*)0);
	}
}
