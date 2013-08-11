module UnrealScript.Engine.SpotLightComponent;

import ScriptClasses;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface SpotLightComponent : PointLightComponent
{
	public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float LightShaftConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float OuterConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float InnerConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	final void SetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14650], params.ptr, cast(void*)0);
	}
}
