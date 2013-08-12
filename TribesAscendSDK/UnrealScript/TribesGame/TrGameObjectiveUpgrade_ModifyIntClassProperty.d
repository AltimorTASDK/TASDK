module UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade;

extern(C++) interface TrGameObjectiveUpgrade_ModifyIntClassProperty : TrGameObjectiveUpgrade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty")); }
	private static __gshared TrGameObjectiveUpgrade_ModifyIntClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_ModifyIntClassProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameObjectiveUpgrade_ModifyIntClassProperty)("TrGameObjectiveUpgrade_ModifyIntClassProperty TribesGame.Default__TrGameObjectiveUpgrade_ModifyIntClassProperty")); }
}
