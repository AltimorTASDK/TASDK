module UnrealScript.TribesGame.TrDmgType_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_SpinfusorD_MKD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SpinfusorD_MKD")); }
	private static __gshared TrDmgType_SpinfusorD_MKD mDefaultProperties;
	@property final static TrDmgType_SpinfusorD_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SpinfusorD_MKD)("TrDmgType_SpinfusorD_MKD TribesGame.Default__TrDmgType_SpinfusorD_MKD")); }
}
