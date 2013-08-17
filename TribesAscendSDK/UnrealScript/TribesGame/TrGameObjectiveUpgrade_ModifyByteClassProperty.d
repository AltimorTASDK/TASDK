module UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyByteClassProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade;

extern(C++) interface TrGameObjectiveUpgrade_ModifyByteClassProperty : TrGameObjectiveUpgrade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameObjectiveUpgrade_ModifyByteClassProperty")()); }
	private static __gshared TrGameObjectiveUpgrade_ModifyByteClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_ModifyByteClassProperty DefaultProperties() { mixin(MGDPC!(TrGameObjectiveUpgrade_ModifyByteClassProperty, "TrGameObjectiveUpgrade_ModifyByteClassProperty TribesGame.Default__TrGameObjectiveUpgrade_ModifyByteClassProperty")()); }
}
