module UnrealScript.Engine.RB_RadialImpulseComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_RadialImpulseComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_RadialImpulseComponent")()); }
	private static __gshared RB_RadialImpulseComponent mDefaultProperties;
	@property final static RB_RadialImpulseComponent DefaultProperties() { mixin(MGDPC!(RB_RadialImpulseComponent, "RB_RadialImpulseComponent Engine.Default__RB_RadialImpulseComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFireImpulse;
		public @property static final ScriptFunction FireImpulse() { mixin(MGF!("mFireImpulse", "Function Engine.RB_RadialImpulseComponent.FireImpulse")()); }
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewSphere'!
			float ImpulseRadius() { mixin(MGPC!("float", 496)()); }
			float ImpulseStrength() { mixin(MGPC!("float", 492)()); }
			PrimitiveComponent.ERadialImpulseFalloff ImpulseFalloff() { mixin(MGPC!("PrimitiveComponent.ERadialImpulseFalloff", 488)()); }
		}
		bool bCauseFracture() { mixin(MGBPC!(500, 0x2)()); }
		bool bCauseFracture(bool val) { mixin(MSBPC!(500, 0x2)()); }
		bool bVelChange() { mixin(MGBPC!(500, 0x1)()); }
		bool bVelChange(bool val) { mixin(MSBPC!(500, 0x1)()); }
	}
	final void FireImpulse(Vector Origin)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireImpulse, params.ptr, cast(void*)0);
	}
}
