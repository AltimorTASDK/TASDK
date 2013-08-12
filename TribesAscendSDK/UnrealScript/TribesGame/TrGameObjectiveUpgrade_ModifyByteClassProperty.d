module UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyByteClassProperty;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade;

extern(C++) interface TrGameObjectiveUpgrade_ModifyByteClassProperty : TrGameObjectiveUpgrade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameObjectiveUpgrade_ModifyByteClassProperty")); }
}
