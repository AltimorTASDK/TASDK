module UnrealScript.Engine.InterpTrackInstVectorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstVectorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstVectorProp")()); }
	private static __gshared InterpTrackInstVectorProp mDefaultProperties;
	@property final static InterpTrackInstVectorProp DefaultProperties() { mixin(MGDPC!(InterpTrackInstVectorProp, "InterpTrackInstVectorProp Engine.Default__InterpTrackInstVectorProp")()); }
	@property final auto ref
	{
		Vector ResetVector() { mixin(MGPC!("Vector", 72)()); }
		UObject.Pointer VectorProp() { mixin(MGPC!("UObject.Pointer", 68)()); }
	}
}
