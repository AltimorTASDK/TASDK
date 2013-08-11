module UnrealScript.UDKBase.UDKExplosionLight;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface UDKExplosionLight : PointLightComponent
{
	struct LightValues
	{
		public @property final auto ref UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)&this + 12); }
		private ubyte __LightColor[4];
		public @property final auto ref float Brightness() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Brightness[4];
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Radius[4];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __StartTime[4];
	}
	public @property final auto ref ScriptArray!(UDKExplosionLight.LightValues) TimeShift() { return *cast(ScriptArray!(UDKExplosionLight.LightValues)*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref int TimeShiftIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float Lifetime() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float HighDetailFrameTime() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x2) != 0; }
	public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x2; } return val; }
	public @property final bool bCheckFrameRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
	public @property final bool bCheckFrameRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
	final void OnLightFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Light)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Light;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34820], params.ptr, cast(void*)0);
	}
	final void ResetLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34830], cast(void*)0, cast(void*)0);
	}
}
