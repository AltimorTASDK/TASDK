module UnrealScript.TribesGame.TrDmgType_Clothesline;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Clothesline : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Clothesline")); }
	private static __gshared TrDmgType_Clothesline mDefaultProperties;
	@property final static TrDmgType_Clothesline DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Clothesline)("TrDmgType_Clothesline TribesGame.Default__TrDmgType_Clothesline")); }
}
