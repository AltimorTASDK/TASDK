module UnrealScript.TribesGame.TrCamera_Neutral;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_Neutral : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_Neutral")()); }
	private static __gshared TrCamera_Neutral mDefaultProperties;
	@property final static TrCamera_Neutral DefaultProperties() { mixin(MGDPC!(TrCamera_Neutral, "TrCamera_Neutral TribesGame.Default__TrCamera_Neutral")()); }
}
