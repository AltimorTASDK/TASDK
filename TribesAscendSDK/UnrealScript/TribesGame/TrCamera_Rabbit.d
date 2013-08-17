module UnrealScript.TribesGame.TrCamera_Rabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_Rabbit : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_Rabbit")()); }
	private static __gshared TrCamera_Rabbit mDefaultProperties;
	@property final static TrCamera_Rabbit DefaultProperties() { mixin(MGDPC!(TrCamera_Rabbit, "TrCamera_Rabbit TribesGame.Default__TrCamera_Rabbit")()); }
}
