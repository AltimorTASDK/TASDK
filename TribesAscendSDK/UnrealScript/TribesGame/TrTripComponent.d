module UnrealScript.TribesGame.TrTripComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrTripComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTripComponent")); }
	private static __gshared TrTripComponent mDefaultProperties;
	@property final static TrTripComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrTripComponent)("TrTripComponent TribesGame.Default__TrTripComponent")); }
	@property final auto ref
	{
		float m_fCachedX() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		TrTripActor m_TripActor() { return *cast(TrTripActor*)(cast(size_t)cast(void*)this + 488); }
	}
}
