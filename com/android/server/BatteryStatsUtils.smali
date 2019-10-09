.class public final Lcom/android/server/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    }
.end annotation


# static fields
.field public static final PHONE_COUNT:I

.field private static sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

.field private static sDataSlot:I

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    .line 17
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    sput v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    .line 22
    sget v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_31

    .line 23
    new-instance v0, Lcom/android/server/BatteryStatsUtils$1;

    invoke-direct {v0}, Lcom/android/server/BatteryStatsUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    .registers 1

    .line 15
    sget-object v0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 15
    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 15
    sput p0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return p0
.end method

.method static synthetic access$200(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "x0"    # I

    .line 15
    invoke-static {p0}, Lcom/android/server/BatteryStatsUtils;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSlot()I
    .registers 1

    .line 69
    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method private static getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 3
    .param p0, "slotId"    # I

    .line 82
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v0

    .line 84
    .local v0, "simState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 85
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .local v1, "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_d
    goto :goto_2d

    .line 86
    .end local v1    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 87
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    .line 88
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 89
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    .line 90
    :cond_1a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 91
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    .line 92
    :cond_20
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x7

    if-ne v0, v1, :cond_27

    goto :goto_2a

    .line 96
    :cond_27
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_2d

    .line 94
    :cond_2a
    :goto_2a
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    .line 96
    .restart local v1    # "dataSlotSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_2d
    nop

    .line 98
    return-object v1
.end method

.method public static getSubId(I)I
    .registers 3
    .param p0, "slotId"    # I

    .line 73
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 74
    .local v0, "dataSub":[I
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    .line 75
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 77
    :cond_d
    const/4 v1, -0x1

    return v1
.end method

.method public static isDataSlot(I)Z
    .registers 3
    .param p0, "dataSlot"    # I

    .line 61
    sget v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    if-ne v0, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static isDataSlotIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 56
    sget v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    if-eqz p0, :cond_12

    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    .line 57
    invoke-static {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 56
    :goto_15
    return v0
.end method

.method public static isDataSlotSub(I)Z
    .registers 3
    .param p0, "subId"    # I

    .line 65
    sget v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static setCallBack(Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;)V
    .registers 1
    .param p0, "callBack"    # Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    .line 52
    sput-object p0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    .line 53
    return-void
.end method
