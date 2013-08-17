module UnrealScript.TribesGame.TrPlayerController_Training;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPlayerController_Training : TrPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerController_Training")()); }
	private static __gshared TrPlayerController_Training mDefaultProperties;
	@property final static TrPlayerController_Training DefaultProperties() { mixin(MGDPC!(TrPlayerController_Training, "TrPlayerController_Training TribesGame.Default__TrPlayerController_Training")()); }
	static struct PlayerWaiting
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrPlayerController_Training.PlayerWaiting")()); }
	}
}
