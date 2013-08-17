module UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_SpectatorBookmark : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_SpectatorBookmark")()); }
	private static __gshared TrCamera_SpectatorBookmark mDefaultProperties;
	@property final static TrCamera_SpectatorBookmark DefaultProperties() { mixin(MGDPC!(TrCamera_SpectatorBookmark, "TrCamera_SpectatorBookmark TribesGame.Default__TrCamera_SpectatorBookmark")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDescription;
			ScriptFunction mGetSpectatorName;
		}
		public @property static final
		{
			ScriptFunction GetDescription() { mixin(MGF!("mGetDescription", "Function TribesGame.TrCamera_SpectatorBookmark.GetDescription")()); }
			ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function TribesGame.TrCamera_SpectatorBookmark.GetSpectatorName")()); }
		}
	}
	enum ESpectatorBookmark : ubyte
	{
		Bookmark_BEBase = 0,
		Bookmark_DSBase = 1,
		Bookmark_CTFBEGeneratorRoom = 2,
		Bookmark_CTFDSGeneratorRoom = 3,
		Bookmark_CTFBEMidfield = 4,
		Bookmark_CTFDSMidfield = 5,
		Bookmark_CTFMapOverhead = 6,
		Bookmark_CTFBEVehiclePad = 7,
		Bookmark_CTFDSVehiclePad = 8,
		Bookmark_CTFBESpawn = 9,
		Bookmark_CTFDSSpawn = 10,
		Bookmark_CTFBESensor = 11,
		Bookmark_CTFDSSensor = 12,
		Bookmark_CTFBETurretA = 13,
		Bookmark_CTFBETurretB = 14,
		Bookmark_CTFBETurretC = 15,
		Bookmark_CTFDSTurretA = 16,
		Bookmark_CTFDSTurretB = 17,
		Bookmark_CTFDSTurretC = 18,
		Bookmark_CTFBEBackRoute = 19,
		Bookmark_CTFDSBackRoute = 20,
		Bookmark_TDMEast = 21,
		Bookmark_TDMWest = 22,
		Bookmark_TDMNorth = 23,
		Bookmark_TDMSouth = 24,
		Bookmark_TDMCenter = 25,
		Bookmark_TDMMapOverhead = 26,
		Bookmark_DdDryHigh = 27,
		Bookmark_DdDryLow = 28,
		Bookmark_DdBEWide = 29,
		Bookmark_DdDSWide = 30,
		Bookmark_DdDockHigh = 31,
		Bookmark_DdDockLow = 32,
		Bookmark_DdBEBunker = 33,
		Bookmark_DdDSBunker = 34,
		Bookmark_DdBEBackEntrance = 35,
		Bookmark_DdDSBackEntrance = 36,
		Bookmark_DNFish = 37,
		Bookmark_XFBSW = 38,
		Bookmark_XFRSW = 39,
		Bookmark_XFBERed = 40,
		Bookmark_XFDSRed = 41,
		Bookmark_XFBEBlue = 42,
		Bookmark_XFDSBlue = 43,
		Bookmark_XFBEBackstop = 44,
		Bookmark_XFDSBackstop = 45,
		Bookmark_XFBECRoom = 46,
		Bookmark_XFDSCRoom = 47,
		Bookmark_NKTower = 48,
		Bookmark_NKTunnel = 49,
		Bookmark_NKWhalebones = 50,
		Bookmark_NKMountainView = 51,
		Bookmark_NKMountainSide = 52,
		Bookmark_BTBase = 53,
		Bookmark_BTBaseInterior = 54,
		Bookmark_BTTunnelEast = 55,
		Bookmark_BTTunnelWest = 56,
		Bookmark_GenericCamera = 57,
		Bookmark_MAX = 58,
	}
	@property final auto ref
	{
		TrCamera_SpectatorBookmark.ESpectatorBookmark m_BookmarkDescription() { mixin(MGPC!("TrCamera_SpectatorBookmark.ESpectatorBookmark", 1416)()); }
		ScriptString BEBase() { mixin(MGPC!("ScriptString", 720)()); }
		ScriptString GenericCamera() { mixin(MGPC!("ScriptString", 1404)()); }
		ScriptString BTTunnelWest() { mixin(MGPC!("ScriptString", 1392)()); }
		ScriptString BTTunnelEast() { mixin(MGPC!("ScriptString", 1380)()); }
		ScriptString BTBaseInterior() { mixin(MGPC!("ScriptString", 1368)()); }
		ScriptString BTBase() { mixin(MGPC!("ScriptString", 1356)()); }
		ScriptString NKMountainSide() { mixin(MGPC!("ScriptString", 1344)()); }
		ScriptString NKMountainView() { mixin(MGPC!("ScriptString", 1332)()); }
		ScriptString NKWhalebones() { mixin(MGPC!("ScriptString", 1320)()); }
		ScriptString NKTunnel() { mixin(MGPC!("ScriptString", 1308)()); }
		ScriptString NKTower() { mixin(MGPC!("ScriptString", 1296)()); }
		ScriptString XFDSCRoom() { mixin(MGPC!("ScriptString", 1284)()); }
		ScriptString XFBECRoom() { mixin(MGPC!("ScriptString", 1272)()); }
		ScriptString XFDSBackstop() { mixin(MGPC!("ScriptString", 1260)()); }
		ScriptString XFBEBackstop() { mixin(MGPC!("ScriptString", 1248)()); }
		ScriptString XFDSBlue() { mixin(MGPC!("ScriptString", 1236)()); }
		ScriptString XFBEBlue() { mixin(MGPC!("ScriptString", 1224)()); }
		ScriptString XFDSRed() { mixin(MGPC!("ScriptString", 1212)()); }
		ScriptString XFBERed() { mixin(MGPC!("ScriptString", 1200)()); }
		ScriptString XFRSW() { mixin(MGPC!("ScriptString", 1188)()); }
		ScriptString XFBSW() { mixin(MGPC!("ScriptString", 1176)()); }
		ScriptString DNFish() { mixin(MGPC!("ScriptString", 1164)()); }
		ScriptString DdDSBackEntrance() { mixin(MGPC!("ScriptString", 1152)()); }
		ScriptString DdBEBackEntrance() { mixin(MGPC!("ScriptString", 1140)()); }
		ScriptString DdDSBunker() { mixin(MGPC!("ScriptString", 1128)()); }
		ScriptString DdBEBunker() { mixin(MGPC!("ScriptString", 1116)()); }
		ScriptString DdDockLow() { mixin(MGPC!("ScriptString", 1104)()); }
		ScriptString DdDockHigh() { mixin(MGPC!("ScriptString", 1092)()); }
		ScriptString DdDSWide() { mixin(MGPC!("ScriptString", 1080)()); }
		ScriptString DdBEWide() { mixin(MGPC!("ScriptString", 1068)()); }
		ScriptString DdDryLow() { mixin(MGPC!("ScriptString", 1056)()); }
		ScriptString DdDryHigh() { mixin(MGPC!("ScriptString", 1044)()); }
		ScriptString TDMMapOverhead() { mixin(MGPC!("ScriptString", 1032)()); }
		ScriptString TDMCenter() { mixin(MGPC!("ScriptString", 1020)()); }
		ScriptString TDMSouth() { mixin(MGPC!("ScriptString", 1008)()); }
		ScriptString TDMNorth() { mixin(MGPC!("ScriptString", 996)()); }
		ScriptString TDMWest() { mixin(MGPC!("ScriptString", 984)()); }
		ScriptString TDMEast() { mixin(MGPC!("ScriptString", 972)()); }
		ScriptString CTFDSBackRoute() { mixin(MGPC!("ScriptString", 960)()); }
		ScriptString CTFBEBackRoute() { mixin(MGPC!("ScriptString", 948)()); }
		ScriptString CTFDSTurretC() { mixin(MGPC!("ScriptString", 936)()); }
		ScriptString CTFDSTurretB() { mixin(MGPC!("ScriptString", 924)()); }
		ScriptString CTFDSTurretA() { mixin(MGPC!("ScriptString", 912)()); }
		ScriptString CTFBETurretC() { mixin(MGPC!("ScriptString", 900)()); }
		ScriptString CTFBETurretB() { mixin(MGPC!("ScriptString", 888)()); }
		ScriptString CTFBETurretA() { mixin(MGPC!("ScriptString", 876)()); }
		ScriptString CTFDSSensor() { mixin(MGPC!("ScriptString", 864)()); }
		ScriptString CTFBESensor() { mixin(MGPC!("ScriptString", 852)()); }
		ScriptString CTFDSSpawn() { mixin(MGPC!("ScriptString", 840)()); }
		ScriptString CTFBESpawn() { mixin(MGPC!("ScriptString", 828)()); }
		ScriptString CTFDSVehiclePad() { mixin(MGPC!("ScriptString", 816)()); }
		ScriptString CTFBEVehiclePad() { mixin(MGPC!("ScriptString", 804)()); }
		ScriptString CTFDSMidfield() { mixin(MGPC!("ScriptString", 792)()); }
		ScriptString CTFBEMidfield() { mixin(MGPC!("ScriptString", 780)()); }
		ScriptString CTFMapOverhead() { mixin(MGPC!("ScriptString", 768)()); }
		ScriptString CTFDSGeneratorRoom() { mixin(MGPC!("ScriptString", 756)()); }
		ScriptString CTFBEGeneratorRoom() { mixin(MGPC!("ScriptString", 744)()); }
		ScriptString DSBase() { mixin(MGPC!("ScriptString", 732)()); }
	}
final:
	ScriptString GetDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
