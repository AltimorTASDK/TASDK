module UnrealScript.TribesGame.TrSiegeCore;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrSiegeCore : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSiegeCore")); }
}
