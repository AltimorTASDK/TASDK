module UnrealScript.Engine.RB_RadialImpulseComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_RadialImpulseComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_RadialImpulseComponent")); }
	private static __gshared RB_RadialImpulseComponent mDefaultProperties;
	@property final static RB_RadialImpulseComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_RadialImpulseComponent)("RB_RadialImpulseComponent Engine.Default__RB_RadialImpulseComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFireImpulse;
		public @property static final ScriptFunction FireImpulse() { return mFireImpulse ? mFireImpulse : (mFireImpulse = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_RadialImpulseComponent.FireImpulse")); }
	}
	@property final
	{
		auto ref
		{
			float ImpulseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float ImpulseStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			PrimitiveComponent.ERadialImpulseFalloff ImpulseFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bCauseFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bCauseFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
	final void FireImpulse(Vector Origin)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireImpulse, params.ptr, cast(void*)0);
	}
}
