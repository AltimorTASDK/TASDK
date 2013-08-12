module UnrealScript.TribesGame.TrAnimNodeBlendByTankSteering;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankSteering : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByTankSteering")); }
	private static __gshared TrAnimNodeBlendByTankSteering mDefaultProperties;
	@property final static TrAnimNodeBlendByTankSteering DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeBlendByTankSteering)("TrAnimNodeBlendByTankSteering TribesGame.Default__TrAnimNodeBlendByTankSteering")); }
	@property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
