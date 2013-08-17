module UnrealScript.TribesGame.TrDevice_DropJammerDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_DropJammerDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_DropJammerDeployable")()); }
	private static __gshared TrDevice_DropJammerDeployable mDefaultProperties;
	@property final static TrDevice_DropJammerDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_DropJammerDeployable, "TrDevice_DropJammerDeployable TribesGame.Default__TrDevice_DropJammerDeployable")()); }
}
