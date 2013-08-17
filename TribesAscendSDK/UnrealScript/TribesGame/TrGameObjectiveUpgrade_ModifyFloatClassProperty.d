module UnrealScript.TribesGame.TrGameObjectiveUpgrade_ModifyFloatClassProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameObjectiveUpgrade;

extern(C++) interface TrGameObjectiveUpgrade_ModifyFloatClassProperty : TrGameObjectiveUpgrade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameObjectiveUpgrade_ModifyFloatClassProperty")); }
	private static __gshared TrGameObjectiveUpgrade_ModifyFloatClassProperty mDefaultProperties;
	@property final static TrGameObjectiveUpgrade_ModifyFloatClassProperty DefaultProperties() { mixin(MGDPC("TrGameObjectiveUpgrade_ModifyFloatClassProperty", "TrGameObjectiveUpgrade_ModifyFloatClassProperty TribesGame.Default__TrGameObjectiveUpgrade_ModifyFloatClassProperty")); }
}
