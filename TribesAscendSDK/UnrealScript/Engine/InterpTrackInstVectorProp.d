module UnrealScript.Engine.InterpTrackInstVectorProp;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstVectorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstVectorProp")); }
	@property final auto ref
	{
		Vector ResetVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer VectorProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
