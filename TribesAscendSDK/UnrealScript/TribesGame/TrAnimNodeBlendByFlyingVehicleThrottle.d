module UnrealScript.TribesGame.TrAnimNodeBlendByFlyingVehicleThrottle;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByFlyingVehicleThrottle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByFlyingVehicleThrottle")); }
	private static __gshared TrAnimNodeBlendByFlyingVehicleThrottle mDefaultProperties;
	@property final static TrAnimNodeBlendByFlyingVehicleThrottle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeBlendByFlyingVehicleThrottle)("TrAnimNodeBlendByFlyingVehicleThrottle TribesGame.Default__TrAnimNodeBlendByFlyingVehicleThrottle")); }
	@property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
