module UnrealScript.TribesGame.TrDevice_PrismMineDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Claymore;

extern(C++) interface TrDevice_PrismMineDeployable : TrDevice_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_PrismMineDeployable")); }
	private static __gshared TrDevice_PrismMineDeployable mDefaultProperties;
	@property final static TrDevice_PrismMineDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_PrismMineDeployable)("TrDevice_PrismMineDeployable TribesGame.Default__TrDevice_PrismMineDeployable")); }
}
