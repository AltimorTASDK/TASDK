module UnrealScript.TribesGame.TrAnimNodeBlendByGravCycleTilt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface TrAnimNodeBlendByGravCycleTilt : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByGravCycleTilt")()); }
	private static __gshared TrAnimNodeBlendByGravCycleTilt mDefaultProperties;
	@property final static TrAnimNodeBlendByGravCycleTilt DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByGravCycleTilt, "TrAnimNodeBlendByGravCycleTilt TribesGame.Default__TrAnimNodeBlendByGravCycleTilt")()); }
	@property final auto ref
	{
		float m_fDeadZone() { mixin(MGPC!("float", 260)()); }
		ScriptName m_RootBoneName() { mixin(MGPC!("ScriptName", 252)()); }
		float m_fTiltScale() { mixin(MGPC!("float", 248)()); }
		float m_fTiltAmount() { mixin(MGPC!("float", 244)()); }
	}
}
