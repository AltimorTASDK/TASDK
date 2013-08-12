module UnrealScript.TribesGame.TrDmgType_FellOutOfWorld;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_FellOutOfWorld : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_FellOutOfWorld")); }
	private static __gshared TrDmgType_FellOutOfWorld mDefaultProperties;
	@property final static TrDmgType_FellOutOfWorld DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_FellOutOfWorld)("TrDmgType_FellOutOfWorld TribesGame.Default__TrDmgType_FellOutOfWorld")); }
}
