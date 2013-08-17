module UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade;

extern(C++) interface TrGameObjectiveUpgrade_ModifyIntClassProperty : TrGameObjectiveUpgrade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameObjectiveUpgrade_ModifyIntClassProperty")()); }
	private static __gshared TrGameObjectiveUpgrade_ModifyIntClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_ModifyIntClassProperty DefaultProperties() { mixin(MGDPC!(TrGameObjectiveUpgrade_ModifyIntClassProperty, "TrGameObjectiveUpgrade_ModifyIntClassProperty TribesGame.Default__TrGameObjectiveUpgrade_ModifyIntClassProperty")()); }
}
