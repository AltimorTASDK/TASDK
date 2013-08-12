module UnrealScript.TribesGame.TrDmgType_Collision;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Collision : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Collision")); }
	private static __gshared TrDmgType_Collision mDefaultProperties;
	@property final static TrDmgType_Collision DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Collision)("TrDmgType_Collision TribesGame.Default__TrDmgType_Collision")); }
}
