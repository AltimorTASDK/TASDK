module UnrealScript.TribesGame.TrDevice_DropJammerDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_DropJammerDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_DropJammerDeployable")); }
	private static __gshared TrDevice_DropJammerDeployable mDefaultProperties;
	@property final static TrDevice_DropJammerDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_DropJammerDeployable)("TrDevice_DropJammerDeployable TribesGame.Default__TrDevice_DropJammerDeployable")); }
}
