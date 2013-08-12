module UnrealScript.TribesGame.TrSeqAct_AIStartJetting;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStartJetting : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_AIStartJetting")); }
	private static __gshared TrSeqAct_AIStartJetting mDefaultProperties;
	@property final static TrSeqAct_AIStartJetting DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_AIStartJetting)("TrSeqAct_AIStartJetting TribesGame.Default__TrSeqAct_AIStartJetting")); }
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
