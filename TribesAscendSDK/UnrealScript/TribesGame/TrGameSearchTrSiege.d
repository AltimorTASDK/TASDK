module UnrealScript.TribesGame.TrGameSearchTrSiege;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrSiege : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrSiege")); }
	private static __gshared TrGameSearchTrSiege mDefaultProperties;
	@property final static TrGameSearchTrSiege DefaultProperties() { mixin(MGDPC("TrGameSearchTrSiege", "TrGameSearchTrSiege TribesGame.Default__TrGameSearchTrSiege")); }
}
