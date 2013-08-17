module UnrealScript.UDKBase.UDKCarriedObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UDKCarriedObject : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKCarriedObject")()); }
	private static __gshared UDKCarriedObject mDefaultProperties;
	@property final static UDKCarriedObject DefaultProperties() { mixin(MGDPC!(UDKCarriedObject, "UDKCarriedObject UDKBase.Default__UDKCarriedObject")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetHUDLocation;
			ScriptFunction mNotReachableBy;
			ScriptFunction mOnBaseChainChanged;
			ScriptFunction mGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction SetHUDLocation() { mixin(MGF!("mSetHUDLocation", "Function UDKBase.UDKCarriedObject.SetHUDLocation")()); }
			ScriptFunction NotReachableBy() { mixin(MGF!("mNotReachableBy", "Function UDKBase.UDKCarriedObject.NotReachableBy")()); }
			ScriptFunction OnBaseChainChanged() { mixin(MGF!("mOnBaseChainChanged", "Function UDKBase.UDKCarriedObject.OnBaseChainChanged")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function UDKBase.UDKCarriedObject.GetTeamNum")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector HUDLocation() { mixin(MGPC!("Vector", 520)()); }
			Actor OldBaseBase() { mixin(MGPC!("Actor", 516)()); }
			Actor OldBase() { mixin(MGPC!("Actor", 512)()); }
			Vector HomeBaseOffset() { mixin(MGPC!("Vector", 500)()); }
			UDKGameObjective HomeBase() { mixin(MGPC!("UDKGameObjective", 496)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkelMesh'!
			float LastValidAnchorTime() { mixin(MGPC!("float", 484)()); }
			NavigationPoint LastAnchor() { mixin(MGPC!("NavigationPoint", 480)()); }
			TeamInfo Team() { mixin(MGPC!("TeamInfo", 476)()); }
		}
		bool bHome() { mixin(MGBPC!(492, 0x1)()); }
		bool bHome(bool val) { mixin(MSBPC!(492, 0x1)()); }
	}
final:
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
	}
	void NotReachableBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotReachableBy, params.ptr, cast(void*)0);
	}
	void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBaseChainChanged, cast(void*)0, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
