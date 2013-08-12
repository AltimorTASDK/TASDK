module UnrealScript.TribesGame.TrAward_Distance_Kill;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Distance_Kill : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Distance_Kill")); }
	private static __gshared TrAward_Distance_Kill mDefaultProperties;
	@property final static TrAward_Distance_Kill DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Distance_Kill)("TrAward_Distance_Kill TribesGame.Default__TrAward_Distance_Kill")); }
}
