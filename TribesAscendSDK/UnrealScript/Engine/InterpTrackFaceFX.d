module UnrealScript.Engine.InterpTrackFaceFX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFaceFX : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackFaceFX")()); }
	private static __gshared InterpTrackFaceFX mDefaultProperties;
	@property final static InterpTrackFaceFX DefaultProperties() { mixin(MGDPC!(InterpTrackFaceFX, "InterpTrackFaceFX Engine.Default__InterpTrackFaceFX")()); }
	struct FaceFXTrackKey
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackFaceFX.FaceFXTrackKey")()); }
		@property final auto ref
		{
			ScriptString FaceFXSeqName() { mixin(MGPS!("ScriptString", 16)()); }
			ScriptString FaceFXGroupName() { mixin(MGPS!("ScriptString", 4)()); }
			float StartTime() { mixin(MGPS!("float", 0)()); }
		}
	}
	struct FaceFXSoundCueKey
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackFaceFX.FaceFXSoundCueKey")()); }
		@property final auto ref SoundCue FaceFXSoundCue() { mixin(MGPS!("SoundCue", 0)()); }
	}
	@property final auto ref
	{
		ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { mixin(MGPC!("ScriptArray!(FaceFXAnimSet)", 128)()); }
		ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey) FaceFXSeqs() { mixin(MGPC!("ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey)", 140)()); }
		ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey) FaceFXSoundCueKeys() { mixin(MGPC!("ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey)", 156)()); }
		FaceFXAsset CachedActorFXAsset() { mixin(MGPC!("FaceFXAsset", 152)()); }
	}
}
