module UnrealScript.TribesGame.TrSeqAct_AIStartJetting;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStartJetting : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqAct_AIStartJetting")); }
	private static __gshared TrSeqAct_AIStartJetting mDefaultProperties;
	@property final static TrSeqAct_AIStartJetting DefaultProperties() { mixin(MGDPC("TrSeqAct_AIStartJetting", "TrSeqAct_AIStartJetting TribesGame.Default__TrSeqAct_AIStartJetting")); }
	@property final
	{
		auto ref
		{
			Vector Direction() { mixin(MGPC("Vector", 236)); }
			float Magnitude() { mixin(MGPC("float", 232)); }
		}
		bool m_bResetVelocity() { mixin(MGBPC(248, 0x1)); }
		bool m_bResetVelocity(bool val) { mixin(MSBPC(248, 0x1)); }
	}
}
