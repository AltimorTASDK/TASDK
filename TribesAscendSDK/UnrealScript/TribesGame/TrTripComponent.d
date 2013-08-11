module UnrealScript.TribesGame.TrTripComponent;

import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrTripComponent : PrimitiveComponent
{
	public @property final auto ref float m_fCachedX() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref TrTripActor m_TripActor() { return *cast(TrTripActor*)(cast(size_t)cast(void*)this + 488); }
}
