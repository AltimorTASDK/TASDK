module UnrealScript.Engine.AnimNotify_PlayParticleEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_PlayParticleEffect : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_PlayParticleEffect")()); }
	private static __gshared AnimNotify_PlayParticleEffect mDefaultProperties;
	@property final static AnimNotify_PlayParticleEffect DefaultProperties() { mixin(MGDPC!(AnimNotify_PlayParticleEffect, "AnimNotify_PlayParticleEffect Engine.Default__AnimNotify_PlayParticleEffect")()); }
	@property final
	{
		auto ref
		{
			ParticleSystem PSTemplate() { mixin(MGPC!("ParticleSystem", 64)()); }
			ScriptName SocketName() { mixin(MGPC!("ScriptName", 72)()); }
			ScriptName BoneName() { mixin(MGPC!("ScriptName", 80)()); }
		}
		bool bIsExtremeContent() { mixin(MGBPC!(68, 0x1)()); }
		bool bIsExtremeContent(bool val) { mixin(MSBPC!(68, 0x1)()); }
		bool bAttach() { mixin(MGBPC!(68, 0x2)()); }
		bool bAttach(bool val) { mixin(MSBPC!(68, 0x2)()); }
		bool bSkipIfOwnerIsHidden() { mixin(MGBPC!(68, 0x8)()); }
		bool bSkipIfOwnerIsHidden(bool val) { mixin(MSBPC!(68, 0x8)()); }
		bool bPreview() { mixin(MGBPC!(68, 0x4)()); }
		bool bPreview(bool val) { mixin(MSBPC!(68, 0x4)()); }
	}
}
