module UnrealScript.Engine.InterpTrackInstSkelControlScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSkelControlScale : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstSkelControlScale")()); }
	private static __gshared InterpTrackInstSkelControlScale mDefaultProperties;
	@property final static InterpTrackInstSkelControlScale DefaultProperties() { mixin(MGDPC!(InterpTrackInstSkelControlScale, "InterpTrackInstSkelControlScale Engine.Default__InterpTrackInstSkelControlScale")()); }
}
