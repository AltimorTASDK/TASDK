module UnrealScript.TribesGame.TrDevice_ForceFieldDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_ForceFieldDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ForceFieldDeployable")); }
	private static __gshared TrDevice_ForceFieldDeployable mDefaultProperties;
	@property final static TrDevice_ForceFieldDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ForceFieldDeployable)("TrDevice_ForceFieldDeployable TribesGame.Default__TrDevice_ForceFieldDeployable")); }
}
