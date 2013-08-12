module UnrealScript.TribesGame.TrGameSearchTrArena;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrArena : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrArena")); }
	private static __gshared TrGameSearchTrArena mDefaultProperties;
	@property final static TrGameSearchTrArena DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrArena)("TrGameSearchTrArena TribesGame.Default__TrGameSearchTrArena")); }
}
