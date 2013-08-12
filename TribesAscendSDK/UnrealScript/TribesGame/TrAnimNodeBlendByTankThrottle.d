module UnrealScript.TribesGame.TrAnimNodeBlendByTankThrottle;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankThrottle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByTankThrottle")); }
	@property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
