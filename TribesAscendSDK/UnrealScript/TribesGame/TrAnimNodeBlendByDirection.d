module UnrealScript.TribesGame.TrAnimNodeBlendByDirection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeSequenceBlendBase;

extern(C++) interface TrAnimNodeBlendByDirection : AnimNodeSequenceBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByDirection")); }
	private static __gshared TrAnimNodeBlendByDirection mDefaultProperties;
	@property final static TrAnimNodeBlendByDirection DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByDirection", "TrAnimNodeBlendByDirection TribesGame.Default__TrAnimNodeBlendByDirection")); }
	@property final
	{
		auto ref
		{
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 344)); }
			float m_fDirAngle() { mixin(MGPC("float", 336)); }
			float m_fBlendSpeed() { mixin(MGPC("float", 332)); }
		}
		bool m_bForwardLeftCorrection() { mixin(MGBPC(340, 0x2)); }
		bool m_bForwardLeftCorrection(bool val) { mixin(MSBPC(340, 0x2)); }
		bool m_bInterpolateWeights() { mixin(MGBPC(340, 0x1)); }
		bool m_bInterpolateWeights(bool val) { mixin(MSBPC(340, 0x1)); }
	}
}
