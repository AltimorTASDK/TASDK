module UnrealScript.UTGame.UTAnimNodeCopyBoneTranslation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeCopyBoneTranslation;

extern(C++) interface UTAnimNodeCopyBoneTranslation : UDKAnimNodeCopyBoneTranslation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimNodeCopyBoneTranslation")); }
	private static __gshared UTAnimNodeCopyBoneTranslation mDefaultProperties;
	@property final static UTAnimNodeCopyBoneTranslation DefaultProperties() { mixin(MGDPC("UTAnimNodeCopyBoneTranslation", "UTAnimNodeCopyBoneTranslation UTGame.Default__UTAnimNodeCopyBoneTranslation")); }
}
