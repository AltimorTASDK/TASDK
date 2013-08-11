module UnrealScript.TribesGame.TrSeqAct_AIStartJetting;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStartJetting : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
			float Magnitude() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
		}
		bool m_bResetVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool m_bResetVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
}
