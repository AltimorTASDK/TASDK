module UnrealScript.Engine.NxForceFieldTornado;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldTornado : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxForceFieldTornado")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceFieldTornado.DoInitRBPhys")); }
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 592); }
			float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 540); }
		}
		bool BSpecialRadialForceMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
		bool BSpecialRadialForceMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
