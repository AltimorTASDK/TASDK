module UnrealScript.Engine.AnimNotify_Sound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Sound : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNotify_Sound")); }
	private static __gshared AnimNotify_Sound mDefaultProperties;
	@property final static AnimNotify_Sound DefaultProperties() { mixin(MGDPC("AnimNotify_Sound", "AnimNotify_Sound Engine.Default__AnimNotify_Sound")); }
	@property final
	{
		auto ref
		{
			float PitchMultiplier() { mixin(MGPC("float", 88)); }
			float VolumeMultiplier() { mixin(MGPC("float", 84)); }
			float PercentToPlay() { mixin(MGPC("float", 80)); }
			ScriptName BoneName() { mixin(MGPC("ScriptName", 72)); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
		}
		bool bIgnoreIfActorHidden() { mixin(MGBPC(68, 0x2)); }
		bool bIgnoreIfActorHidden(bool val) { mixin(MSBPC(68, 0x2)); }
		bool bFollowActor() { mixin(MGBPC(68, 0x1)); }
		bool bFollowActor(bool val) { mixin(MSBPC(68, 0x1)); }
	}
}
