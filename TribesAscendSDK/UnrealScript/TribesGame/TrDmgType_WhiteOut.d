module UnrealScript.TribesGame.TrDmgType_WhiteOut;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_WhiteOut : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_WhiteOut")); }
	@property final auto ref
	{
		float m_fWhiteoutInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
		float m_fWhiteoutTargetValue() { return *cast(float*)(cast(size_t)cast(void*)this + 428); }
	}
}
