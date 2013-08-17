module UnrealScript.TribesGame.Interface_TrTripNotifier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UInterface;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface Interface_TrTripNotifier : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.Interface_TrTripNotifier")()); }
	private static __gshared Interface_TrTripNotifier mDefaultProperties;
	@property final static Interface_TrTripNotifier DefaultProperties() { mixin(MGDPC!(Interface_TrTripNotifier, "Interface_TrTripNotifier TribesGame.Default__Interface_TrTripNotifier")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddTripActor;
			ScriptFunction mRemoveTripActor;
			ScriptFunction mTripActivated;
			ScriptFunction mGetParticleSystemName;
			ScriptFunction mGetTripSocketPosition;
			ScriptFunction mOnTripAwake;
			ScriptFunction mOnTripSleep;
		}
		public @property static final
		{
			ScriptFunction AddTripActor() { mixin(MGF!("mAddTripActor", "Function TribesGame.Interface_TrTripNotifier.AddTripActor")()); }
			ScriptFunction RemoveTripActor() { mixin(MGF!("mRemoveTripActor", "Function TribesGame.Interface_TrTripNotifier.RemoveTripActor")()); }
			ScriptFunction TripActivated() { mixin(MGF!("mTripActivated", "Function TribesGame.Interface_TrTripNotifier.TripActivated")()); }
			ScriptFunction GetParticleSystemName() { mixin(MGF!("mGetParticleSystemName", "Function TribesGame.Interface_TrTripNotifier.GetParticleSystemName")()); }
			ScriptFunction GetTripSocketPosition() { mixin(MGF!("mGetTripSocketPosition", "Function TribesGame.Interface_TrTripNotifier.GetTripSocketPosition")()); }
			ScriptFunction OnTripAwake() { mixin(MGF!("mOnTripAwake", "Function TribesGame.Interface_TrTripNotifier.OnTripAwake")()); }
			ScriptFunction OnTripSleep() { mixin(MGF!("mOnTripSleep", "Function TribesGame.Interface_TrTripNotifier.OnTripSleep")()); }
		}
	}
final:
	void AddTripActor(TrTripActor NewTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = NewTrip;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTripActor, params.ptr, cast(void*)0);
	}
	void RemoveTripActor(TrTripActor RemoveTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = RemoveTrip;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveTripActor, params.ptr, cast(void*)0);
	}
	void TripActivated(Pawn Other, Vector ActivateLocation, TrTripActor TripActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = ActivateLocation;
		*cast(TrTripActor*)&params[16] = TripActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.TripActivated, params.ptr, cast(void*)0);
	}
	ParticleSystem GetParticleSystemName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetParticleSystemName, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)params.ptr;
	}
	bool GetTripSocketPosition(bool bIsLeft, ref Vector SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = SocketPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTripSocketPosition, params.ptr, cast(void*)0);
		SocketPosition = *cast(Vector*)&params[4];
		return *cast(bool*)&params[16];
	}
	void OnTripAwake()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTripAwake, cast(void*)0, cast(void*)0);
	}
	void OnTripSleep()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTripSleep, cast(void*)0, cast(void*)0);
	}
}
