module UnrealScript.TribesGame.TrAnimNodeBlendByGravCycleDirection;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByGravCycleDirection : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByGravCycleDirection")); }
	@property final auto ref
	{
		float m_fBackwardThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
		TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
	}
}
