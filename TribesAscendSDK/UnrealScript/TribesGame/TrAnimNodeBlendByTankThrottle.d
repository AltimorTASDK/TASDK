module UnrealScript.TribesGame.TrAnimNodeBlendByTankThrottle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankThrottle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByTankThrottle")()); }
	private static __gshared TrAnimNodeBlendByTankThrottle mDefaultProperties;
	@property final static TrAnimNodeBlendByTankThrottle DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByTankThrottle, "TrAnimNodeBlendByTankThrottle TribesGame.Default__TrAnimNodeBlendByTankThrottle")()); }
	@property final auto ref TrVehicle m_TrVehicle() { mixin(MGPC!("TrVehicle", 292)()); }
}
