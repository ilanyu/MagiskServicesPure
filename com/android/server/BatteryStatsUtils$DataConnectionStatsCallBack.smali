.class public Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataConnectionStatsCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3
    .param p1, "dataSubId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 48
    return-void
.end method
