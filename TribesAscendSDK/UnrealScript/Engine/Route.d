module UnrealScript.Engine.Route;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface Route : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Route")()); }
	private static __gshared Route mDefaultProperties;
	@property final static Route DefaultProperties() { mixin(MGDPC!(Route, "Route Engine.Default__Route")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResolveRouteIndex;
			ScriptFunction mMoveOntoRoutePath;
		}
		public @property static final
		{
			ScriptFunction ResolveRouteIndex() { mixin(MGF!("mResolveRouteIndex", "Function Engine.Route.ResolveRouteIndex")()); }
			ScriptFunction MoveOntoRoutePath() { mixin(MGF!("mMoveOntoRoutePath", "Function Engine.Route.MoveOntoRoutePath")()); }
		}
	}
	enum ERouteDirection : ubyte
	{
		ERD_Forward = 0,
		ERD_Reverse = 1,
		ERD_MAX = 2,
	}
	enum ERouteFillAction : ubyte
	{
		RFA_Overwrite = 0,
		RFA_Add = 1,
		RFA_Remove = 2,
		RFA_Clear = 3,
		RFA_MAX = 4,
	}
	enum ERouteType : ubyte
	{
		ERT_Linear = 0,
		ERT_Loop = 1,
		ERT_Circle = 2,
		ERT_MAX = 3,
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ActorReference) RouteList() { mixin(MGPC!(ScriptArray!(Actor.ActorReference), 484)()); }
		Route.ERouteType RouteType() { mixin(MGPC!(Route.ERouteType, 480)()); }
		UObject.Pointer VfTable_IEditorLinkSelectionInterface() { mixin(MGPC!(UObject.Pointer, 476)()); }
		float FudgeFactor() { mixin(MGPC!(float, 496)()); }
		int RouteIndexOffset() { mixin(MGPC!(int, 500)()); }
	}
final:
	int ResolveRouteIndex(int Idx, Route.ERouteDirection RouteDirection, ref ubyte out_bComplete, ref ubyte out_bReverse)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Idx;
		*cast(Route.ERouteDirection*)&params[4] = RouteDirection;
		params[5] = out_bComplete;
		params[6] = out_bReverse;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveRouteIndex, params.ptr, cast(void*)0);
		*out_bComplete = params[5];
		*out_bReverse = params[6];
		return *cast(int*)&params[8];
	}
	int MoveOntoRoutePath(Pawn P, Route.ERouteDirection RouteDirection, float DistFudgeFactor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Route.ERouteDirection*)&params[4] = RouteDirection;
		*cast(float*)&params[8] = DistFudgeFactor;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveOntoRoutePath, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
