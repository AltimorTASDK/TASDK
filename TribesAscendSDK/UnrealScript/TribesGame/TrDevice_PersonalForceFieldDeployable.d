module UnrealScript.TribesGame.TrDevice_PersonalForceFieldDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_PersonalForceFieldDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_PersonalForceFieldDeployable")); }
	private static __gshared TrDevice_PersonalForceFieldDeployable mDefaultProperties;
	@property final static TrDevice_PersonalForceFieldDeployable DefaultProperties() { mixin(MGDPC("TrDevice_PersonalForceFieldDeployable", "TrDevice_PersonalForceFieldDeployable TribesGame.Default__TrDevice_PersonalForceFieldDeployable")); }
}
