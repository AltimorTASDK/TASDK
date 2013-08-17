module UnrealScript.TribesGame.TrAnimNodeBlendByDeployableState;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByDeployableState : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByDeployableState")); }
	private static __gshared TrAnimNodeBlendByDeployableState mDefaultProperties;
	@property final static TrAnimNodeBlendByDeployableState DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByDeployableState", "TrAnimNodeBlendByDeployableState TribesGame.Default__TrAnimNodeBlendByDeployableState")); }
	@property final auto ref TrDeployable m_TrDeployable() { mixin(MGPC("TrDeployable", 292)); }
}
