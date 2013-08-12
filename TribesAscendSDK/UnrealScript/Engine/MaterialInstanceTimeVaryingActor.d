module UnrealScript.Engine.MaterialInstanceTimeVaryingActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MaterialInstanceTimeVaryingActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstanceTimeVaryingActor")); }
	private static __gshared MaterialInstanceTimeVaryingActor mDefaultProperties;
	@property final static MaterialInstanceTimeVaryingActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialInstanceTimeVaryingActor)("MaterialInstanceTimeVaryingActor Engine.Default__MaterialInstanceTimeVaryingActor")); }
	@property final auto ref MaterialInstanceTimeVarying MatInst() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 476); }
}
