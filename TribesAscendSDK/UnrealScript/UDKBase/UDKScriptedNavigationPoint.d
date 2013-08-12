module UnrealScript.UDKBase.UDKScriptedNavigationPoint;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;

extern(C++) interface UDKScriptedNavigationPoint : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKScriptedNavigationPoint")); }
	private static __gshared UDKScriptedNavigationPoint mDefaultProperties;
	@property final static UDKScriptedNavigationPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKScriptedNavigationPoint)("UDKScriptedNavigationPoint UDKBase.Default__UDKScriptedNavigationPoint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpecifyEndAnchor;
			ScriptFunction mNotifyAnchorFindingResult;
		}
		public @property static final
		{
			ScriptFunction SpecifyEndAnchor() { return mSpecifyEndAnchor ? mSpecifyEndAnchor : (mSpecifyEndAnchor = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKScriptedNavigationPoint.SpecifyEndAnchor")); }
			ScriptFunction NotifyAnchorFindingResult() { return mNotifyAnchorFindingResult ? mNotifyAnchorFindingResult : (mNotifyAnchorFindingResult = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKScriptedNavigationPoint.NotifyAnchorFindingResult")); }
		}
	}
	@property final
	{
		bool bAnchorMustBeReachable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x4) != 0; }
		bool bAnchorMustBeReachable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x4; } return val; }
		bool bScriptNotifyAnchorFindingResult() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
		bool bScriptNotifyAnchorFindingResult(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
		bool bScriptSpecifyEndAnchor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
		bool bScriptSpecifyEndAnchor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	}
final:
	NavigationPoint SpecifyEndAnchor(Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecifyEndAnchor, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	void NotifyAnchorFindingResult(NavigationPoint EndAnchor, Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = EndAnchor;
		*cast(Pawn*)&params[4] = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAnchorFindingResult, params.ptr, cast(void*)0);
	}
}
