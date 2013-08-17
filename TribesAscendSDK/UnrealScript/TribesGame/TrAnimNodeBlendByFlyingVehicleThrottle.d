module UnrealScript.TribesGame.TrAnimNodeBlendByFlyingVehicleThrottle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByFlyingVehicleThrottle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByFlyingVehicleThrottle")); }
	private static __gshared TrAnimNodeBlendByFlyingVehicleThrottle mDefaultProperties;
	@property final static TrAnimNodeBlendByFlyingVehicleThrottle DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByFlyingVehicleThrottle", "TrAnimNodeBlendByFlyingVehicleThrottle TribesGame.Default__TrAnimNodeBlendByFlyingVehicleThrottle")); }
	@property final auto ref TrVehicle m_TrVehicle() { mixin(MGPC("TrVehicle", 292)); }
}
