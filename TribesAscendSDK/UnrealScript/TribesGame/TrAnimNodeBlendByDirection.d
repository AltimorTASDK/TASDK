module UnrealScript.TribesGame.TrAnimNodeBlendByDirection;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeSequenceBlendBase;

extern(C++) interface TrAnimNodeBlendByDirection : AnimNodeSequenceBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByDirection")); }
	@property final
	{
		auto ref
		{
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 344); }
			float m_fDirAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float m_fBlendSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
		}
		bool m_bForwardLeftCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 340) & 0x2) != 0; }
		bool m_bForwardLeftCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 340) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 340) &= ~0x2; } return val; }
		bool m_bInterpolateWeights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 340) & 0x1) != 0; }
		bool m_bInterpolateWeights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 340) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 340) &= ~0x1; } return val; }
	}
}
