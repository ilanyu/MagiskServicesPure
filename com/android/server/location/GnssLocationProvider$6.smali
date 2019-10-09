.class Lcom/android/server/location/GnssLocationProvider$6;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 708
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 710
    const-string v0, "SUPL_VER"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v0, "SUPL_MODE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v0, "SUPL_ES"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v0, "LPP_PROFILE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v0, "GPS_LOCK"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 710
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_supl_version(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$2000(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 711
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_supl_mode(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1900(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 712
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_supl_es(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 713
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_lpp_profile(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 715
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_gnss_pos_protocol_select(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 717
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_emergency_supl_pdn(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .registers 2
    .param p0, "val"    # I

    .line 718
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_set_gps_lock(I)Z
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1400(I)Z

    move-result v0

    return v0
.end method
