module UnrealScript.TribesGame.TrDmgType_WhiteOut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_WhiteOut : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_WhiteOut")()); }
	private static __gshared TrDmgType_WhiteOut mDefaultProperties;
	@property final static TrDmgType_WhiteOut DefaultProperties() { mixin(MGDPC!(TrDmgType_WhiteOut, "TrDmgType_WhiteOut TribesGame.Default__TrDmgType_WhiteOut")()); }
	@property final auto ref
	{
		float m_fWhiteoutInterpSpeed() { mixin(MGPC!("float", 424)()); }
		float m_fWhiteoutTargetValue() { mixin(MGPC!("float", 428)()); }
	}
}
