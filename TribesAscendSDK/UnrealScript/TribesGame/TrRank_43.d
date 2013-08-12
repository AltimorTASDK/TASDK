module UnrealScript.TribesGame.TrRank_43;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_43 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_43")); }
	private static __gshared TrRank_43 mDefaultProperties;
	@property final static TrRank_43 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_43)("TrRank_43 TribesGame.Default__TrRank_43")); }
}
