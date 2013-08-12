module UnrealScript.Engine.SpotLightComponent;

import ScriptClasses;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface SpotLightComponent : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpotLightComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetRotation;
		public @property static final ScriptFunction SetRotation() { return mSetRotation ? mSetRotation : (mSetRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.SpotLightComponent.SetRotation")); }
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRotation, params.ptr, cast(void*)0);
	}
}
