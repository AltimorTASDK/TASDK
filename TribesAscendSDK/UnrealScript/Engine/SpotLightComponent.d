module UnrealScript.Engine.SpotLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface SpotLightComponent : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpotLightComponent")()); }
	private static __gshared SpotLightComponent mDefaultProperties;
	@property final static SpotLightComponent DefaultProperties() { mixin(MGDPC!(SpotLightComponent, "SpotLightComponent Engine.Default__SpotLightComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetRotation;
		public @property static final ScriptFunction SetRotation() { mixin(MGF!("mSetRotation", "Function Engine.SpotLightComponent.SetRotation")()); }
	}
	@property final auto ref
	{
		Rotator Rotation() { mixin(MGPC!("Rotator", 604)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewOuterCone'!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewInnerCone'!
		float LightShaftConeAngle() { mixin(MGPC!("float", 592)()); }
		float OuterConeAngle() { mixin(MGPC!("float", 588)()); }
		float InnerConeAngle() { mixin(MGPC!("float", 584)()); }
	}
	final void SetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRotation, params.ptr, cast(void*)0);
	}
}
