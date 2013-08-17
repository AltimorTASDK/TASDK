module UnrealScript.TribesGame.TrDevice_BackupGeneratorDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_BackupGeneratorDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_BackupGeneratorDeployable")()); }
	private static __gshared TrDevice_BackupGeneratorDeployable mDefaultProperties;
	@property final static TrDevice_BackupGeneratorDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_BackupGeneratorDeployable, "TrDevice_BackupGeneratorDeployable TribesGame.Default__TrDevice_BackupGeneratorDeployable")()); }
}
