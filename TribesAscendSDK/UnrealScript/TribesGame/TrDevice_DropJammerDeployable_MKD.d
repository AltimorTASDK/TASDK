module UnrealScript.TribesGame.TrDevice_DropJammerDeployable_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_DropJammerDeployable;

extern(C++) interface TrDevice_DropJammerDeployable_MKD : TrDevice_DropJammerDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_DropJammerDeployable_MKD")); }
	private static __gshared TrDevice_DropJammerDeployable_MKD mDefaultProperties;
	@property final static TrDevice_DropJammerDeployable_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_DropJammerDeployable_MKD)("TrDevice_DropJammerDeployable_MKD TribesGame.Default__TrDevice_DropJammerDeployable_MKD")); }
}
