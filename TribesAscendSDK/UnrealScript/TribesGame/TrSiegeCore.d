module UnrealScript.TribesGame.TrSiegeCore;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrSiegeCore : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSiegeCore")); }
	private static __gshared TrSiegeCore mDefaultProperties;
	@property final static TrSiegeCore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSiegeCore)("TrSiegeCore TribesGame.Default__TrSiegeCore")); }
}
