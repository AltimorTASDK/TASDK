module UnrealScript.TribesGame.TrGameSearchTrDaD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrDaD : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSearchTrDaD")()); }
	private static __gshared TrGameSearchTrDaD mDefaultProperties;
	@property final static TrGameSearchTrDaD DefaultProperties() { mixin(MGDPC!(TrGameSearchTrDaD, "TrGameSearchTrDaD TribesGame.Default__TrGameSearchTrDaD")()); }
}
