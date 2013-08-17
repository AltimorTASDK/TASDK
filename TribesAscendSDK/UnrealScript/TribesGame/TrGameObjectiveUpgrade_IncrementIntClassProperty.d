module UnrealScript.TribesGame.TrGameObjectiveUpgrade_IncrementIntClassProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty;

extern(C++) interface TrGameObjectiveUpgrade_IncrementIntClassProperty : TrGameObjectiveUpgrade_ModifyIntClassProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameObjectiveUpgrade_IncrementIntClassProperty")); }
	private static __gshared TrGameObjectiveUpgrade_IncrementIntClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_IncrementIntClassProperty DefaultProperties() { mixin(MGDPC("TrGameObjectiveUpgrade_IncrementIntClassProperty", "TrGameObjectiveUpgrade_IncrementIntClassProperty TribesGame.Default__TrGameObjectiveUpgrade_IncrementIntClassProperty")); }
}
