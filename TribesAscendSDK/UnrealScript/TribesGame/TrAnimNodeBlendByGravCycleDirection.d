module UnrealScript.TribesGame.TrAnimNodeBlendByGravCycleDirection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByGravCycleDirection : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByGravCycleDirection")()); }
	private static __gshared TrAnimNodeBlendByGravCycleDirection mDefaultProperties;
	@property final static TrAnimNodeBlendByGravCycleDirection DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByGravCycleDirection, "TrAnimNodeBlendByGravCycleDirection TribesGame.Default__TrAnimNodeBlendByGravCycleDirection")()); }
	@property final auto ref
	{
		float m_fBackwardThreshold() { mixin(MGPC!(float, 296)()); }
		TrVehicle m_TrVehicle() { mixin(MGPC!(TrVehicle, 292)()); }
	}
}
