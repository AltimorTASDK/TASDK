module UnrealScript.TribesGame.TrAccoladeHelper;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrAccoladeHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccoladeHelper")); }
	private static __gshared TrAccoladeHelper mDefaultProperties;
	@property final static TrAccoladeHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccoladeHelper)("TrAccoladeHelper TribesGame.Default__TrAccoladeHelper")); }
}
