module UnrealScript.Engine.InterpTrackDirector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackDirector : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackDirector")()); }
	private static __gshared InterpTrackDirector mDefaultProperties;
	@property final static InterpTrackDirector DefaultProperties() { mixin(MGDPC!(InterpTrackDirector, "InterpTrackDirector Engine.Default__InterpTrackDirector")()); }
	struct DirectorTrackCut
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackDirector.DirectorTrackCut")()); }
		@property final auto ref
		{
			ScriptName TargetCamGroup() { mixin(MGPS!("ScriptName", 8)()); }
			float TransitionTime() { mixin(MGPS!("float", 4)()); }
			float Time() { mixin(MGPS!("float", 0)()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackDirector.DirectorTrackCut) CutTrack() { mixin(MGPC!("ScriptArray!(InterpTrackDirector.DirectorTrackCut)", 128)()); }
		bool bSimulateCameraCutsOnClients() { mixin(MGBPC!(140, 0x1)()); }
		bool bSimulateCameraCutsOnClients(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
