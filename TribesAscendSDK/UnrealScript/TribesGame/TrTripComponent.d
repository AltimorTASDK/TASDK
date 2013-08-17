module UnrealScript.TribesGame.TrTripComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrTripComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTripComponent")()); }
	private static __gshared TrTripComponent mDefaultProperties;
	@property final static TrTripComponent DefaultProperties() { mixin(MGDPC!(TrTripComponent, "TrTripComponent TribesGame.Default__TrTripComponent")()); }
	@property final auto ref
	{
		float m_fCachedX() { mixin(MGPC!("float", 492)()); }
		TrTripActor m_TripActor() { mixin(MGPC!("TrTripActor", 488)()); }
	}
}
