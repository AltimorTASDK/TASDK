module UnrealScript.TribesGame.TrGameObjectiveUpgrade_IncrementIntClassProperty;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty;

extern(C++) interface TrGameObjectiveUpgrade_IncrementIntClassProperty : TrGameObjectiveUpgrade_ModifyIntClassProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameObjectiveUpgrade_IncrementIntClassProperty")); }
	private static __gshared TrGameObjectiveUpgrade_IncrementIntClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_IncrementIntClassProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameObjectiveUpgrade_IncrementIntClassProperty)("TrGameObjectiveUpgrade_IncrementIntClassProperty TribesGame.Default__TrGameObjectiveUpgrade_IncrementIntClassProperty")); }
}
