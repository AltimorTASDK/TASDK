module UnrealScript.Engine.SpotLightComponent;

import ScriptClasses;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface SpotLightComponent : PointLightComponent
{
public extern(D):
	@property final auto ref
	{
		Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 604); }
		float LightShaftConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
		float OuterConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
		float InnerConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	}
	final void SetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14650], params.ptr, cast(void*)0);
	}
}
