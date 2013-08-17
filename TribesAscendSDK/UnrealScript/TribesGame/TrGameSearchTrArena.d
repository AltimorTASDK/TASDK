module UnrealScript.TribesGame.TrGameSearchTrArena;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrArena : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrArena")); }
	private static __gshared TrGameSearchTrArena mDefaultProperties;
	@property final static TrGameSearchTrArena DefaultProperties() { mixin(MGDPC("TrGameSearchTrArena", "TrGameSearchTrArena TribesGame.Default__TrGameSearchTrArena")); }
}
