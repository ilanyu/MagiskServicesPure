.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$ActiveCallback;,
        Lcom/android/server/AppOpsService$ModeCallback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final NO_VERSION:I = -0x1

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final UID_STATE_NAMES:[Ljava/lang/String;

.field static final UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

.field static final UID_STATE_TIME_ATTRS:[Ljava/lang/String;

.field static final WRITE_DELAY:J = 0x1b7740L

.field static final sOpInControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/AppOpsService$Constants;

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field mLastUptime:J

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field private mServiceState:Lcom/android/server/AppOpsServiceState;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 125
    const/16 v0, 0x14

    new-array v1, v0, [I

    fill-array-data v1, :array_2b0

    sput-object v1, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 148
    const-string/jumbo v2, "pers "

    const-string/jumbo v3, "top  "

    const-string v4, "fgsvc"

    const-string v5, "fg   "

    const-string v6, "bg   "

    const-string v7, "cch  "

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    .line 157
    const-string/jumbo v2, "tp"

    const-string/jumbo v3, "tt"

    const-string/jumbo v4, "tfs"

    const-string/jumbo v5, "tf"

    const-string/jumbo v6, "tb"

    const-string/jumbo v7, "tc"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    .line 166
    const-string/jumbo v2, "rp"

    const-string/jumbo v3, "rt"

    const-string/jumbo v4, "rfs"

    const-string/jumbo v5, "rf"

    const-string/jumbo v6, "rb"

    const-string/jumbo v7, "rc"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    .line 178
    sget-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2716

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACCESS_XIAOMI_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.NFC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AUTO_START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void

    nop

    :array_2b0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 5
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 633
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 233
    new-instance v0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    .line 238
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 263
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 495
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 496
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 497
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 498
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 594
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 634
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 635
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 636
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 637
    new-instance v0, Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$Constants;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    .line 638
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 639
    new-instance v0, Lcom/android/server/AppOpsServiceState;

    invoke-direct {v0}, Lcom/android/server/AppOpsServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    .line 640
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AppOpsService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 15
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 1223
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_3

    .line 1224
    return-object p0

    .line 1226
    :cond_3
    if-nez p0, :cond_b

    .line 1227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 1229
    :cond_b
    const/4 v0, 0x0

    .line 1230
    .local v0, "duplicate":Z
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1231
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "duplicate":Z
    :goto_13
    if-ge v0, v1, :cond_58

    .line 1232
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1233
    .local v4, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1234
    .local v5, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v5, :cond_2d

    .line 1235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 1236
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 1238
    :cond_2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1239
    .local v6, "reportCount":I
    move v7, v2

    .local v7, "j":I
    :goto_32
    if-ge v7, v6, :cond_4b

    .line 1240
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1241
    .local v8, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v9, p1, :cond_48

    iget-object v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1242
    const/4 v3, 0x1

    .line 1243
    goto :goto_4b

    .line 1239
    .end local v8    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 1247
    .end local v6    # "reportCount":I
    .end local v7    # "j":I
    :cond_4b
    :goto_4b
    if-nez v3, :cond_55

    .line 1248
    new-instance v6, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v4    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1251
    .end local v0    # "i":I
    :cond_58
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1546
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1547
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v0, :cond_1d

    .line 1548
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Restriction;

    .line 1549
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1550
    iget v2, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2

    .line 1553
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .line 3698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3699
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 3702
    return-void

    .line 3700
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .registers 19
    .param p1, "uidOps"    # Landroid/util/SparseIntArray;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 904
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 905
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_30

    .line 906
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 907
    nop

    .local v3, "j":I
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5f

    .line 908
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 912
    .end local v3    # "j":I
    :cond_30
    nop

    .restart local v3    # "j":I
    :goto_31
    array-length v4, v1

    if-ge v3, v4, :cond_5f

    .line 913
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 914
    .local v4, "index":I
    if-ltz v4, :cond_5c

    .line 915
    if-nez v2, :cond_44

    .line 916
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 918
    :cond_44
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v4    # "index":I
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 923
    .end local v3    # "j":I
    :cond_5f
    return-object v2
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 29
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 869
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 870
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 871
    .local v3, "elapsedNow":J
    const/4 v5, -0x1

    if-nez v1, :cond_65

    .line 872
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 873
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v9

    if-ge v8, v9, :cond_62

    .line 874
    invoke-virtual {v0, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 875
    .local v9, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    if-ne v10, v5, :cond_25

    const/4 v10, 0x1

    goto :goto_26

    :cond_25
    const/4 v10, 0x0

    .line 876
    .local v10, "running":Z
    :goto_26
    if-eqz v10, :cond_2d

    .line 877
    iget-wide v11, v9, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v11, v3, v11

    goto :goto_30

    .line 878
    :cond_2d
    iget v11, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v11, v11

    :goto_30
    move-wide v14, v11

    .line 879
    .local v14, "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    iget v11, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v6, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v7, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v5, v14

    move-wide/from16 v20, v3

    iget v3, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .end local v3    # "elapsedNow":J
    .local v20, "elapsedNow":J
    iget-object v4, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v11

    move-object v11, v13

    move-object/from16 v22, v9

    move-object v9, v13

    move/from16 v13, v16

    .end local v9    # "curOp":Lcom/android/server/AppOpsService$Op;
    .local v22, "curOp":Lcom/android/server/AppOpsService$Op;
    move-wide/from16 v23, v14

    move-object v14, v6

    .end local v14    # "duration":J
    .local v23, "duration":J
    move-object v15, v7

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v10    # "running":Z
    .end local v22    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v23    # "duration":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v3, v20

    const/4 v5, -0x1

    goto :goto_13

    .line 900
    .end local v8    # "j":I
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_62
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    goto :goto_b6

    .line 884
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_65
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    move-object v3, v2

    const/4 v2, 0x0

    .local v2, "j":I
    .local v3, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_69
    array-length v4, v1

    if-ge v2, v4, :cond_b5

    .line 885
    aget v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 886
    .local v4, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_b0

    .line 887
    if-nez v3, :cond_7e

    .line 888
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 890
    :cond_7e
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_85

    const/4 v5, 0x1

    goto :goto_86

    :cond_85
    const/4 v5, 0x0

    .line 891
    .local v5, "running":Z
    :goto_86
    if-eqz v5, :cond_8d

    .line 892
    iget-wide v7, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v7, v20, v7

    goto :goto_90

    .line 893
    :cond_8d
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v7, v7

    :goto_90
    move-wide v14, v7

    .line 894
    .restart local v14    # "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v8, v4, Lcom/android/server/AppOpsService$Op;->op:I

    iget v9, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v10, v4, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v11, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v12, v14

    iget v7, v4, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v6, v4, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v7

    move-object v7, v13

    move-object v0, v13

    move v13, v5

    move-wide/from16 v17, v14

    move/from16 v14, v16

    .end local v14    # "duration":J
    .local v17, "duration":J
    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .end local v4    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "running":Z
    .end local v17    # "duration":J
    :cond_b0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_69

    .line 900
    .end local v2    # "j":I
    :cond_b5
    move-object v2, v3

    .end local v3    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_b6
    return-object v2
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V
    .registers 23
    .param p1, "uidState"    # Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v6, p0

    .line 2027
    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-gt v0, v1, :cond_c

    move v0, v9

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move v10, v0

    .line 2028
    .local v10, "lastForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-gt v0, v1, :cond_14

    move v0, v9

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    move v11, v0

    .line 2029
    .local v11, "nowForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 2030
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2031
    iget-boolean v0, v7, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_e3

    if-eq v10, v11, :cond_e3

    .line 2032
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "fgi":I
    :goto_2b
    move v12, v0

    .end local v0    # "fgi":I
    .local v12, "fgi":I
    if-ltz v12, :cond_e3

    .line 2033
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2034
    goto/16 :goto_de

    .line 2036
    :cond_38
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2038
    .local v13, "code":I
    iget-object v0, v6, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    .line 2039
    .local v14, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v14, :cond_de

    .line 2040
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "cbi":I
    :goto_4e
    move v15, v0

    .end local v0    # "cbi":I
    .local v15, "cbi":I
    if-ltz v15, :cond_de

    .line 2041
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/AppOpsService$ModeCallback;

    .line 2042
    .local v5, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    iget v0, v5, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_d9

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 2043
    invoke-virtual {v5, v0}, Lcom/android/server/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_67

    .line 2044
    goto/16 :goto_d9

    .line 2046
    :cond_67
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    if-eqz v0, :cond_76

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2047
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_76

    move v0, v9

    goto :goto_77

    :cond_76
    const/4 v0, 0x0

    :goto_77
    move/from16 v16, v0

    .line 2048
    .local v16, "doAllPackages":Z
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d9

    .line 2049
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "pkgi":I
    :goto_84
    move v3, v0

    .end local v0    # "pkgi":I
    .local v3, "pkgi":I
    if-ltz v3, :cond_d9

    .line 2050
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 2051
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v16, :cond_a6

    if-eqz v2, :cond_9f

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v0, v4, :cond_9f

    goto :goto_a6

    .line 2049
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_9f
    move/from16 v20, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    goto :goto_d1

    .line 2053
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_a6
    :goto_a6
    iget-object v1, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 2055
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v4, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2056
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2053
    move-object v9, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move-object v2, v5

    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v19, "op":Lcom/android/server/AppOpsService$Op;
    move/from16 v20, v3

    move-object/from16 v3, v17

    .end local v3    # "pkgi":I
    .local v20, "pkgi":I
    const/16 v17, 0x4

    move-object/from16 v18, v5

    move-object v5, v8

    .end local v5    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .local v18, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2049
    .end local v19    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_d1
    add-int/lit8 v0, v20, -0x1

    .end local v20    # "pkgi":I
    .restart local v0    # "pkgi":I
    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_84

    .line 2040
    .end local v0    # "pkgi":I
    .end local v16    # "doAllPackages":Z
    .end local v18    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    :cond_d9
    :goto_d9
    add-int/lit8 v0, v15, -0x1

    .end local v15    # "cbi":I
    .local v0, "cbi":I
    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 2032
    .end local v0    # "cbi":I
    .end local v13    # "code":I
    .end local v14    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_de
    :goto_de
    add-int/lit8 v0, v12, -0x1

    .end local v12    # "fgi":I
    .local v0, "fgi":I
    const/4 v9, 0x1

    goto/16 :goto_2b

    .line 2064
    .end local v0    # "fgi":I
    :cond_e3
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2827
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    const-string v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    const-string v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3068
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    return-void
.end method

.method private dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "firstPrefix"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "times"    # [J
    .param p5, "now"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;

    move-object v0, p1

    .line 3081
    const/4 v1, 0x0

    .line 3082
    .local v1, "hasTime":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_4
    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    if-ge v3, v6, :cond_14

    .line 3083
    aget-wide v7, p4, v3

    cmp-long v7, v7, v4

    if-eqz v7, :cond_11

    .line 3084
    const/4 v1, 0x1

    .line 3085
    goto :goto_14

    .line 3082
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3088
    .end local v3    # "i":I
    :cond_14
    :goto_14
    if-nez v1, :cond_17

    .line 3089
    return-void

    .line 3091
    :cond_17
    const/4 v3, 0x1

    .line 3092
    .local v3, "first":Z
    nop

    .local v2, "i":I
    :goto_19
    if-ge v2, v6, :cond_5b

    .line 3093
    aget-wide v7, p4, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_56

    .line 3094
    if-eqz v3, :cond_25

    move-object v7, p2

    goto :goto_26

    :cond_25
    move-object v7, p3

    :goto_26
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3095
    const/4 v3, 0x0

    .line 3096
    sget-object v7, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3097
    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    aget-wide v7, p4, v2

    move-object/from16 v9, p8

    invoke-virtual {v9, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 3099
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3100
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    aget-wide v7, p4, v2

    sub-long v7, v7, p5

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3102
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 3092
    :cond_56
    move-object/from16 v9, p8

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3105
    .end local v2    # "i":I
    :cond_5b
    move-object/from16 v9, p8

    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .registers 4

    .line 1379
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 1380
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 1381
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 1382
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1379
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1385
    .end local v0    # "uidi":I
    :cond_1e
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .line 2148
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 2150
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_9

    .line 2151
    const/4 v1, 0x0

    return-object v1

    .line 2153
    :cond_9
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 8
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .line 2157
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2158
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_19

    .line 2159
    if-nez p3, :cond_c

    .line 2160
    const/4 v1, 0x0

    return-object v1

    .line 2162
    :cond_c
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    .line 2163
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2165
    :cond_19
    if-eqz p3, :cond_1e

    .line 2166
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 2168
    :cond_1e
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z
    .param p4, "uidMismatchExpected"    # Z

    .line 2068
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2069
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2070
    return-object v1

    .line 2073
    :cond_8
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_16

    .line 2074
    if-nez p3, :cond_f

    .line 2075
    return-object v1

    .line 2077
    :cond_f
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2080
    :cond_16
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 2081
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_a8

    .line 2082
    if-nez p3, :cond_23

    .line 2083
    return-object v1

    .line 2085
    :cond_23
    const/4 v3, 0x0

    .line 2088
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_9d

    .line 2089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2091
    .local v4, "ident":J
    const/4 v6, -0x1

    .line 2093
    .local v6, "pkgUid":I
    :try_start_2b
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 2096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2094
    invoke-interface {v7, p2, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2097
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_49

    .line 2098
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v6, v8

    .line 2099
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_46

    const/4 v8, 0x1

    goto :goto_47

    :cond_46
    const/4 v8, 0x0

    :goto_47
    move v3, v8

    goto :goto_51

    .line 2102
    :cond_49
    invoke-static {p2}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v8
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4d} :catch_54
    .catchall {:try_start_2b .. :try_end_4d} :catchall_52

    move v6, v8

    .line 2103
    if-ltz v6, :cond_51

    .line 2104
    const/4 v3, 0x0

    .line 2109
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_51
    :goto_51
    goto :goto_5c

    .line 2122
    .end local v6    # "pkgUid":I
    :catchall_52
    move-exception v1

    goto :goto_99

    .line 2107
    .restart local v6    # "pkgUid":I
    :catch_54
    move-exception v7

    .line 2108
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_55
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2110
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_5c
    if-eq v6, p1, :cond_95

    .line 2113
    if-nez p4, :cond_90

    .line 2114
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "here"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2116
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_55 .. :try_end_90} :catchall_52

    .line 2119
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_90
    nop

    .line 2122
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    return-object v1

    .line 2122
    .end local v6    # "pkgUid":I
    :cond_95
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    goto :goto_9d

    .line 2122
    :goto_99
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2125
    .end local v4    # "ident":J
    :cond_9d
    :goto_9d
    new-instance v1, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2126
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    .end local v3    # "isPrivileged":Z
    :cond_a8
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I

    .line 3741
    const/4 v0, 0x0

    .line 3743
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 3746
    goto :goto_c

    .line 3744
    :catch_b
    move-exception v1

    .line 3747
    :goto_c
    if-nez v0, :cond_11

    .line 3748
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 3750
    :cond_11
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 2004
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 2005
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1a

    .line 2006
    if-nez p2, :cond_e

    .line 2007
    const/4 v1, 0x0

    return-object v1

    .line 2009
    :cond_e
    new-instance v1, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    .line 2010
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3f

    .line 2012
    :cond_1a
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3f

    .line 2013
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2e

    .line 2014
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    goto :goto_3f

    .line 2016
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    .line 2017
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3f

    .line 2018
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 2023
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2172
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-le p2, v1, :cond_6

    .line 2173
    return v0

    .line 2176
    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2177
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2179
    .local v2, "restrictionSetCount":I
    move v3, v0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_3e

    .line 2182
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2183
    .local v4, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2184
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3a

    .line 2186
    monitor-enter p0

    .line 2187
    :try_start_29
    invoke-direct {p0, p1, p3, v6, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v5

    .line 2189
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v5, :cond_35

    iget-boolean v7, v5, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_35

    .line 2190
    monitor-exit p0

    return v0

    .line 2192
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_35
    monitor-exit p0

    goto :goto_3a

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw v0

    .line 2194
    :cond_3a
    :goto_3a
    return v6

    .line 2179
    .end local v4    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2197
    .end local v3    # "i":I
    :cond_3e
    return v0
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1538
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1539
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1538
    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1540
    :catch_d
    move-exception v0

    .line 1541
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$lxgFmOnGguOiLyfUZbyOpNBfTVw(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .registers 23
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 1639
    const/4 v11, 0x0

    .line 1640
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    const/4 v12, 0x0

    .line 1642
    .local v12, "switchOp":Lcom/android/server/AppOpsService$Op;
    const/4 v13, 0x0

    .line 1643
    .local v13, "resultMode":I
    const/4 v14, 0x0

    .line 1644
    .local v14, "uidState":Lcom/android/server/AppOpsService$UidState;
    monitor-enter p0

    .line 1645
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_f
    invoke-direct {v1, v9, v10, v2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    move-object v15, v3

    .line 1647
    .local v15, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v15, :cond_23

    .line 1650
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v3, v9

    move-object v4, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1651
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1653
    :cond_23
    invoke-direct {v1, v15, v8, v2}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    move-object v11, v3

    .line 1654
    invoke-direct {v1, v9, v8, v10}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1655
    monitor-exit p0

    return v2

    .line 1657
    :cond_30
    iget-object v3, v15, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object v14, v3

    .line 1658
    iget v3, v11, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_76

    .line 1659
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Noting op not finished: uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_76
    iput v0, v11, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1664
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1667
    .local v0, "switchCode":I
    iget-object v3, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_b0

    iget-object v3, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_b0

    .line 1668
    iget-object v2, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v2

    move/from16 v16, v2

    .line 1669
    .local v16, "uidMode":I
    if-eqz v16, :cond_ad

    .line 1673
    iget-object v2, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1674
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v7, 0x0

    move v3, v9

    move-object v4, v10

    move v5, v8

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1675
    monitor-exit p0

    return v16

    .line 1677
    :cond_ad
    move/from16 v2, v16

    .line 1678
    .end local v13    # "resultMode":I
    .end local v16    # "uidMode":I
    .local v2, "resultMode":I
    goto :goto_ca

    .line 1679
    .end local v2    # "resultMode":I
    .restart local v13    # "resultMode":I
    :cond_b0
    if-eq v0, v8, :cond_b7

    invoke-direct {v1, v15, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    goto :goto_b8

    :cond_b7
    move-object v2, v11

    :goto_b8
    move-object v12, v2

    .line 1680
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v2

    .line 1681
    .local v2, "mode":I
    if-eqz v2, :cond_c9

    .line 1685
    iget-object v3, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v4, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1687
    :cond_c9
    nop

    .line 1689
    .end local v2    # "mode":I
    .end local v15    # "ops":Lcom/android/server/AppOpsService$Ops;
    :goto_ca
    move v13, v2

    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_f .. :try_end_cc} :catchall_133

    .line 1691
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v2

    if-nez v2, :cond_de

    .line 1692
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-static/range {p3 .. p3}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 1693
    const/4 v13, 0x0

    goto :goto_f0

    .line 1695
    :cond_de
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 1696
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    .line 1697
    if-eqz v12, :cond_f0

    .line 1698
    iput v13, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1701
    :cond_f0
    :goto_f0
    const/4 v2, 0x5

    if-ne v13, v2, :cond_fa

    .line 1702
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v2, v0, v9, v10}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v2

    .line 1704
    .end local v13    # "resultMode":I
    .local v2, "resultMode":I
    move v13, v2

    .end local v2    # "resultMode":I
    .restart local v13    # "resultMode":I
    :cond_fa
    if-eqz v13, :cond_10b

    .line 1705
    iget-object v2, v11, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v3, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1714
    move/from16 v15, p4

    move-object/from16 v7, p5

    goto :goto_125

    .line 1709
    :cond_10b
    iget-object v2, v11, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v3, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1710
    iget-object v2, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v14, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 1711
    move/from16 v15, p4

    iput v15, v11, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1712
    move-object/from16 v7, p5

    iput-object v7, v11, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1714
    :goto_125
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/16 v16, 0x0

    move v3, v9

    move-object v4, v10

    move v5, v0

    move v6, v13

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1715
    return v13

    .line 1689
    .end local v0    # "switchCode":I
    :catchall_133
    move-exception v0

    move/from16 v15, p4

    :goto_136
    :try_start_136
    monitor-exit p0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_138

    throw v0

    :catchall_138
    move-exception v0

    goto :goto_136
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 12
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1936
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1938
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 1939
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 1940
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 1942
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 1945
    goto :goto_18

    .line 1943
    :catch_17
    move-exception v5

    .line 1939
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1948
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1949
    nop

    .line 1950
    return-void

    .line 1948
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 7
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1196
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1197
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1198
    .local v1, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1196
    .end local v1    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1200
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Lcom/android/server/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1204
    const/4 v0, -0x2

    if-eq p3, v0, :cond_c

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_c

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_c

    .line 1205
    return-void

    .line 1210
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1212
    .local v0, "identity":J
    :try_start_10
    iget-object v2, p1, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1216
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1213
    :catch_1b
    move-exception v2

    .line 1216
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    nop

    .line 1218
    return-void
.end method

.method private notifyWatchersOfChange(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 3639
    monitor-enter p0

    .line 3640
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 3641
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_d

    .line 3642
    monitor-exit p0

    return-void

    .line 3644
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move-object v0, v1

    .line 3645
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 3647
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 3648
    return-void

    .line 3645
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 20
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 2855
    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 2856
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2858
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 2859
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    move-object v4, v0

    .line 2861
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_342

    goto :goto_76

    :sswitch_1f
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x5

    goto :goto_77

    :sswitch_2a
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x6

    goto :goto_77

    :sswitch_35
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x3

    goto :goto_77

    :sswitch_40
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x7

    goto :goto_77

    :sswitch_4b
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    move v0, v7

    goto :goto_77

    :sswitch_56
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    move v0, v6

    goto :goto_77

    :sswitch_60
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x2

    goto :goto_77

    :sswitch_6b
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x4

    goto :goto_77

    :cond_76
    :goto_76
    move v0, v5

    :goto_77
    packed-switch v0, :pswitch_data_364

    .line 3059
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_32a

    .line 3045
    :pswitch_80
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3046
    .local v0, "res":I
    if-gez v0, :cond_87

    .line 3047
    return v0

    .line 3050
    :cond_87
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_99

    .line 3051
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3056
    return v7

    .line 3054
    :cond_99
    return v5

    .line 3031
    .end local v0    # "res":I
    :pswitch_9a
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3032
    .restart local v0    # "res":I
    if-gez v0, :cond_a1

    .line 3033
    return v0

    .line 3036
    :cond_a1
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_b4

    .line 3037
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3042
    return v7

    .line 3040
    :cond_b4
    return v5

    .line 3019
    .end local v0    # "res":I
    :pswitch_b5
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3019
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_c6} :catch_32b

    .line 3023
    .local v8, "token":J
    :try_start_c6
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->readState()V

    .line 3024
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_d5

    .line 3026
    :try_start_d0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3027
    nop

    .line 3028
    return v7

    .line 3026
    :catchall_d5
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3004
    .end local v8    # "token":J
    :pswitch_da
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3005
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3004
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_eb} :catch_32b

    .line 3008
    .restart local v8    # "token":J
    :try_start_eb
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter v6
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_10c

    .line 3009
    :try_start_ee
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v10, v10, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3010
    monitor-exit v6
    :try_end_fa
    .catchall {:try_start_ee .. :try_end_fa} :catchall_109

    .line 3011
    :try_start_fa
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 3012
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_fa .. :try_end_104} :catchall_10c

    .line 3014
    :try_start_104
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_107} :catch_32b

    .line 3015
    nop

    .line 3016
    return v7

    .line 3010
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v6
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10c

    .line 3014
    :catchall_10c
    move-exception v0

    :try_start_10d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2968
    .end local v8    # "token":J
    :pswitch_111
    const/4 v0, 0x0

    .line 2969
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    move-object v8, v0

    move v0, v6

    .line 2970
    .local v0, "userId":I
    .local v8, "packageName":Ljava/lang/String;
    :goto_115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 2970
    .local v10, "argument":Ljava/lang/String;
    if-eqz v9, :cond_147

    .line 2971
    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 2973
    .local v9, "userStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v0, v11

    .line 2974
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_115

    .line 2975
    :cond_12e
    if-nez v8, :cond_132

    .line 2976
    move-object v8, v10

    goto :goto_115

    .line 2978
    :cond_132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    return v5

    .line 2984
    .end local v10    # "argument":Ljava/lang/String;
    :cond_147
    if-ne v0, v6, :cond_14e

    .line 2985
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v0, v6

    .line 2988
    :cond_14e
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v0, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 2989
    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2990
    if-ne v0, v5, :cond_160

    .line 2991
    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_169

    .line 2993
    :cond_160
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2995
    :goto_169
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2996
    if-nez v8, :cond_176

    .line 2997
    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17f

    .line 2999
    :cond_176
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    :goto_17f
    return v7

    .line 2940
    .end local v0    # "userId":I
    .end local v8    # "packageName":Ljava/lang/String;
    :pswitch_180
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 2941
    .local v0, "res":I
    if-gez v0, :cond_187

    .line 2942
    return v0

    .line 2944
    :cond_187
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 2946
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1e3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_19c

    goto :goto_1e3

    .line 2950
    :cond_19c
    move v8, v7

    .line 2950
    .local v8, "i":I
    :goto_19d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1e2

    .line 2951
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 2952
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 2953
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 2954
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 2954
    .local v12, "j":I
    :goto_1b5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1d6

    .line 2955
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 2956
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_1d3

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_1d3

    .line 2957
    const/4 v10, 0x1

    .line 2958
    goto :goto_1d6

    .line 2954
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_1d3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b5

    .line 2961
    .end local v12    # "j":I
    :cond_1d6
    :goto_1d6
    if-eqz v10, :cond_1df

    .line 2962
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1df
    add-int/lit8 v8, v8, 0x1

    goto :goto_19d

    .line 2965
    .end local v8    # "i":I
    :cond_1e2
    return v7

    .line 2947
    :cond_1e3
    :goto_1e3
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    return v7

    .line 2887
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_1e9
    invoke-virtual {v1, v7, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 2888
    .restart local v0    # "res":I
    if-gez v0, :cond_1f0

    .line 2889
    return v0

    .line 2893
    :cond_1f0
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_20b

    .line 2894
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2896
    iget v12, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_206

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 2894
    :cond_206
    invoke-interface {v8, v10, v11, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 2894
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_21e

    .line 2898
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_20b
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 2900
    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v11, v5, :cond_21a

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 2898
    :cond_21a
    invoke-interface {v8, v10, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    .line 2902
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_21e
    if-eqz v6, :cond_2c8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_228

    goto/16 :goto_2c8

    .line 2910
    :cond_228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2911
    .local v8, "now":J
    move v10, v7

    .line 2911
    .local v10, "i":I
    :goto_22d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2c7

    .line 2912
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 2913
    .restart local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 2913
    .restart local v12    # "j":I
    :goto_23e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2c3

    .line 2914
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 2915
    .restart local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2916
    const-string v14, ": "

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_282

    .line 2919
    const-string v14, "; time="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2921
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2923
    :cond_282
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    cmp-long v14, v14, v16

    if-eqz v14, :cond_29d

    .line 2924
    const-string v14, "; rejectTime="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2925
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2926
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2928
    :cond_29d
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-ne v14, v5, :cond_2a9

    .line 2929
    const-string v14, " (running)"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2bc

    .line 2930
    :cond_2a9
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-eqz v14, :cond_2bc

    .line 2931
    const-string v14, "; duration="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2934
    :cond_2bc
    :goto_2bc
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 2913
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_23e

    .line 2911
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v12    # "j":I
    :cond_2c3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_22d

    .line 2937
    .end local v10    # "i":I
    :cond_2c7
    return v7

    .line 2903
    .end local v8    # "now":J
    :cond_2c8
    :goto_2c8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-le v8, v5, :cond_2f5

    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    const/16 v9, 0x4e

    if-ge v8, v9, :cond_2f5

    .line 2905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2906
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    .line 2905
    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    :cond_2f5
    return v7

    .line 2863
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_2f6
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 2864
    .restart local v0    # "res":I
    if-gez v0, :cond_2fd

    .line 2865
    return v0

    .line 2867
    :cond_2fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 2868
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_309

    .line 2869
    const-string v7, "Error: Mode not specified."

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    return v5

    .line 2873
    :cond_309
    invoke-static {v6, v4}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v8

    .line 2874
    .local v8, "mode":I
    if-gez v8, :cond_310

    .line 2875
    return v5

    .line 2878
    :cond_310
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_320

    .line 2879
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_329

    .line 2882
    :cond_320
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_329
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_329} :catch_32b

    .line 2884
    :goto_329
    return v7

    .line 3059
    .end local v0    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v8    # "mode":I
    :goto_32a
    return v0

    .line 3061
    :catch_32b
    move-exception v0

    .line 3062
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    .end local v0    # "e":Landroid/os/RemoteException;
    return v5

    nop

    :sswitch_data_342
    .sparse-switch
        -0x658cadaf -> :sswitch_6b
        -0x458a76fa -> :sswitch_60
        0x18f56 -> :sswitch_56
        0x1bc62 -> :sswitch_4b
        0x360802 -> :sswitch_40
        0x6761d4f -> :sswitch_35
        0x68ac462 -> :sswitch_2a
        0x7c514e7a -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_2f6
        :pswitch_1e9
        :pswitch_180
        :pswitch_111
        :pswitch_da
        :pswitch_b5
        :pswitch_9a
        :pswitch_80
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 8
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1006
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1007
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1009
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_37

    .line 1010
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 1011
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_37

    .line 1012
    iget-object v1, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1013
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1014
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v2, :cond_37

    .line 1015
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1017
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1019
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1020
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1026
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_37
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 3689
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 3690
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3691
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 3692
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3689
    .end local v1    # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3695
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3705
    if-nez p0, :cond_6

    .line 3706
    const-string/jumbo v0, "root"

    return-object v0

    .line 3707
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 3708
    const-string v0, "com.android.shell"

    return-object v0

    .line 3709
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    .line 3710
    const-string/jumbo v0, "media"

    return-object v0

    .line 3711
    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    .line 3712
    const-string v0, "audioserver"

    return-object v0

    .line 3713
    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    .line 3714
    const-string v0, "cameraserver"

    return-object v0

    .line 3715
    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    .line 3716
    const-string v0, "android"

    return-object v0

    .line 3718
    :cond_2c
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3722
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 3723
    return v0

    .line 3725
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_56

    goto :goto_42

    :sswitch_d
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x3

    goto :goto_43

    :sswitch_17
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :sswitch_22
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    goto :goto_43

    :sswitch_2d
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    move v1, v2

    goto :goto_43

    :sswitch_38
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x4

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v0

    :goto_43
    packed-switch v1, :pswitch_data_6c

    .line 3737
    return v0

    .line 3735
    :pswitch_47
    const/16 v0, 0x417

    return v0

    .line 3733
    :pswitch_4a
    const/16 v0, 0x411

    return v0

    .line 3731
    :pswitch_4d
    const/16 v0, 0x3f5

    return v0

    .line 3729
    :pswitch_50
    const/16 v0, 0x7d0

    return v0

    .line 3727
    :pswitch_53
    return v2

    nop

    nop

    :sswitch_data_56
    .sparse-switch
        -0x1dbbd58 -> :sswitch_38
        0x3580e2 -> :sswitch_2d
        0x62f6fe4 -> :sswitch_22
        0x6855e30 -> :sswitch_17
        0x50251299 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .line 2139
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2141
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 2142
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2143
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2145
    :cond_19
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1910
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 1911
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1912
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;

    .line 1913
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2e

    .line 1914
    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 1915
    goto :goto_2e

    .line 1917
    :cond_23
    if-nez v0, :cond_2b

    .line 1918
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1920
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1910
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1923
    .end local v2    # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 1924
    return-void

    .line 1926
    :cond_34
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    .line 1928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1926
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1929
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .line 2132
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 2133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2134
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2136
    :cond_11
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 3613
    monitor-enter p0

    .line 3614
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_45

    .line 3616
    .local v0, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_1b

    .line 3618
    :try_start_b
    new-instance v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_18
    .catchall {:try_start_b .. :try_end_10} :catchall_45

    move-object v0, v1

    .line 3621
    nop

    .line 3622
    :try_start_12
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 3619
    :catch_18
    move-exception v1

    .line 3620
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 3625
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3626
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 3627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3626
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3630
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3631
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3632
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 3634
    .end local v0    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_43
    monitor-exit p0

    .line 3635
    return-void

    .line 3634
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private upgradeLocked(I)V
    .registers 6
    .param p1, "oldVersion"    # I

    .line 2315
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 2316
    return-void

    .line 2318
    :cond_4
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading app-ops xml from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    goto :goto_29

    .line 2321
    :cond_26
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2326
    :goto_29
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2327
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .registers 13

    .line 2279
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 2280
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 2281
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v2, :cond_15

    .line 2282
    goto :goto_77

    .line 2284
    :cond_15
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x3f

    const/16 v5, 0x46

    if-eqz v3, :cond_30

    .line 2285
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 2286
    .local v3, "idx":I
    if-ltz v3, :cond_30

    .line 2287
    iget-object v6, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2288
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 2287
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    .end local v3    # "idx":I
    :cond_30
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_35

    .line 2292
    goto :goto_77

    .line 2294
    :cond_35
    const/4 v3, 0x0

    .line 2295
    .local v3, "changed":Z
    move v6, v3

    move v3, v0

    .local v3, "j":I
    .local v6, "changed":Z
    :goto_38
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_70

    .line 2296
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 2297
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v7, :cond_6d

    .line 2298
    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 2299
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_6d

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_6d

    .line 2300
    new-instance v9, Lcom/android/server/AppOpsService$Op;

    iget-object v10, v8, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v5}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2302
    .local v9, "copy":Lcom/android/server/AppOpsService$Op;
    iget v10, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2303
    invoke-virtual {v7, v5, v9}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2304
    const/4 v6, 0x1

    .line 2295
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "copy":Lcom/android/server/AppOpsService$Op;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2308
    .end local v3    # "j":I
    :cond_70
    if-eqz v6, :cond_77

    .line 2309
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2279
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "changed":Z
    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2312
    .end local v1    # "i":I
    :cond_7a
    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .line 1992
    if-ltz p1, :cond_7

    const/16 v0, 0x4e

    if-ge p1, v0, :cond_7

    .line 1993
    return-void

    .line 1996
    :cond_7
    const/16 v0, 0x2710

    if-le p1, v0, :cond_10

    const/16 v0, 0x272c

    if-ge p1, v0, :cond_10

    .line 1997
    return-void

    .line 2000
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1982
    return-void

    .line 1984
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1985
    return-void

    .line 1987
    :cond_12
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1988
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1987
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1989
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 9
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1510
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    .line 1514
    .local v0, "suspended":Z
    goto :goto_7

    .line 1511
    .end local v0    # "suspended":Z
    :catch_5
    move-exception v0

    .line 1513
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 1517
    .local v0, "suspended":Z
    :goto_7
    if-nez p4, :cond_d

    .line 1518
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1522
    :cond_d
    if-eqz v0, :cond_2f

    .line 1523
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio disabled for suspended package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v1, 0x1

    return v1

    .line 1527
    :cond_2f
    monitor-enter p0

    .line 1528
    :try_start_30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    .line 1529
    .local v1, "mode":I
    if-eqz v1, :cond_38

    .line 1530
    monitor-exit p0

    return v1

    .line 1532
    .end local v1    # "mode":I
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3e

    .line 1533
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1532
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1476
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1477
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1478
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1479
    .local v6, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v6, :cond_e

    .line 1480
    return v0

    .line 1482
    :cond_e
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-static {v6}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1483
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v1, p1, p2, v6}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1484
    :cond_26
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p2

    move-object v2, v6

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1485
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, v6}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 1488
    :cond_37
    monitor-enter p0

    .line 1489
    :try_start_38
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1490
    monitor-exit p0

    return v0

    .line 1492
    :cond_40
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    move p1, v0

    .line 1493
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1494
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v1, :cond_60

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_60

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1495
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_60

    .line 1496
    iget-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1498
    :cond_60
    invoke-direct {p0, p1, p2, v6, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1499
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_6c

    .line 1500
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit p0

    return v2

    .line 1502
    :cond_6c
    iget v2, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v2

    .line 1503
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_70
    move-exception v0

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_38 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public checkOperationInternal(IILjava/lang/String;)I
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3922
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 3923
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3924
    monitor-enter p0

    .line 3925
    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 3926
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_15

    .line 3927
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 3929
    :cond_15
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v1

    .line 3930
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1592
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    monitor-enter p0

    .line 1594
    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1596
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_e

    .line 1597
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1599
    :cond_e
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 1601
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 63
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 3109
    move-object/from16 v13, p3

    iget-object v0, v15, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3111
    :cond_11
    const/4 v0, -0x1

    .line 3112
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 3113
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3114
    .local v2, "dumpUid":I
    const/4 v3, -0x1

    .line 3116
    .local v3, "dumpMode":I
    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v13, :cond_f0

    .line 3117
    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v12

    .line 3117
    .local v0, "i":I
    .local v2, "dumpOp":I
    .local v3, "dumpUid":I
    .local v4, "dumpMode":I
    :goto_1d
    array-length v5, v13

    if-ge v0, v5, :cond_ec

    .line 3118
    aget-object v5, v13, v0

    .line 3119
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "-h"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 3120
    invoke-direct {v15, v14}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3121
    return-void

    .line 3122
    :cond_2e
    const-string v6, "-a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 3122
    .end local v5    # "arg":Ljava/lang/String;
    goto/16 :goto_b1

    .line 3124
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_38
    const-string v6, "--op"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 3125
    add-int/lit8 v0, v0, 0x1

    .line 3126
    array-length v6, v13

    if-lt v0, v6, :cond_4b

    .line 3127
    const-string v6, "No argument for --op option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    return-void

    .line 3130
    :cond_4b
    aget-object v6, v13, v0

    # invokes: Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->access$300(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    .line 3131
    if-gez v2, :cond_b1

    .line 3132
    return-void

    .line 3134
    :cond_54
    const-string v6, "--package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3135
    add-int/lit8 v6, v0, 0x1

    .line 3136
    .end local v0    # "i":I
    .local v6, "i":I
    array-length v0, v13

    if-lt v6, v0, :cond_67

    .line 3137
    const-string v0, "No argument for --package option"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    return-void

    .line 3140
    :cond_67
    aget-object v1, v13, v6

    .line 3142
    :try_start_69
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v7, 0xc02000

    invoke-interface {v0, v1, v7, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_74} :catch_76

    move v3, v0

    .line 3146
    goto :goto_77

    .line 3145
    :catch_76
    move-exception v0

    .line 3147
    :goto_77
    if-gez v3, :cond_8e

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    return-void

    .line 3151
    :cond_8e
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3117
    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    move v3, v0

    move v0, v6

    goto :goto_b1

    .line 3152
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v3    # "dumpUid":I
    :cond_95
    const-string v6, "--mode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 3153
    add-int/lit8 v0, v0, 0x1

    .line 3154
    array-length v6, v13

    if-lt v0, v6, :cond_a8

    .line 3155
    const-string v6, "No argument for --mode option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    return-void

    .line 3158
    :cond_a8
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 3159
    if-gez v4, :cond_b1

    .line 3160
    return-void

    .line 3117
    .end local v5    # "arg":Ljava/lang/String;
    :cond_b1
    :goto_b1
    add-int/2addr v0, v11

    goto/16 :goto_1d

    .line 3162
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_b4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d7

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_d7

    .line 3163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    return-void

    .line 3166
    :cond_d7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    return-void

    .line 3172
    .end local v0    # "i":I
    .end local v5    # "arg":Ljava/lang/String;
    :cond_ec
    move v10, v2

    move v5, v4

    move-object v4, v1

    goto :goto_f4

    .line 3172
    .end local v4    # "dumpMode":I
    .local v0, "dumpOp":I
    .local v2, "dumpUid":I
    .local v3, "dumpMode":I
    :cond_f0
    move v10, v0

    move-object v4, v1

    move v5, v3

    move v3, v2

    .line 3172
    .end local v0    # "dumpOp":I
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v2    # "dumpUid":I
    .local v3, "dumpUid":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    :goto_f4
    monitor-enter p0

    .line 3173
    :try_start_f5
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    iget-object v0, v15, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3175
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3177
    .local v6, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 3178
    .local v19, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3179
    .local v0, "nowUptime":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3180
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_11d
    .catchall {:try_start_f5 .. :try_end_11d} :catchall_ac2

    .line 3181
    .local v9, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 3182
    .local v2, "needSep":Z
    if-gez v10, :cond_16a

    if-gez v5, :cond_16a

    if-nez v4, :cond_16a

    :try_start_124
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_16a

    .line 3183
    const-string v11, "  Profile owners:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    move v11, v12

    .line 3184
    .local v11, "poi":I
    :goto_12e
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_159

    .line 3185
    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3186
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3187
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3188
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3189
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3184
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_12e

    .line 3191
    .end local v11    # "poi":I
    :cond_159
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_15c
    .catchall {:try_start_124 .. :try_end_15c} :catchall_15d

    goto :goto_16a

    .line 3567
    .end local v0    # "nowUptime":J
    .end local v2    # "needSep":Z
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    :catchall_15d
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_acd

    .line 3193
    .restart local v0    # "nowUptime":J
    .restart local v2    # "needSep":Z
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v19    # "nowElapsed":J
    :cond_16a
    :goto_16a
    :try_start_16a
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11
    :try_end_170
    .catchall {:try_start_16a .. :try_end_170} :catchall_ac2

    if-lez v11, :cond_204

    .line 3194
    const/4 v11, 0x0

    .line 3195
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3195
    .local v2, "i":I
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_176
    move/from16 v23, v11

    :try_start_178
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3195
    .end local v11    # "needSep":Z
    .local v23, "needSep":Z
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_202

    .line 3196
    if-ltz v10, :cond_18f

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v10, v11, :cond_18f

    .line 3197
    nop

    .line 3195
    .end local v23    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_18b
    move/from16 v11, v23

    goto/16 :goto_1fc

    .line 3199
    .end local v11    # "needSep":Z
    .restart local v23    # "needSep":Z
    :cond_18f
    const/4 v11, 0x0

    .line 3200
    .local v11, "printedOpHeader":Z
    move/from16 v24, v11

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3200
    .end local v11    # "printedOpHeader":Z
    .local v24, "printedOpHeader":Z
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3201
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move/from16 v16, v12

    const/4 v12, 0x0

    .line 3201
    .local v12, "j":I
    .local v16, "printedHeader":Z
    :goto_19d
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_1f9

    .line 3202
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3203
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_1ba

    move-object/from16 v26, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3203
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v26, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-ltz v11, :cond_1bc

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3204
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_1bc

    .line 3205
    goto :goto_1f2

    .line 3207
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1ba
    move-object/from16 v26, v11

    .line 3207
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1bc
    const/16 v23, 0x1

    .line 3208
    if-nez v16, :cond_1c7

    .line 3209
    const-string v11, "  Op mode watchers:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    const/16 v16, 0x1

    .line 3212
    :cond_1c7
    if-nez v24, :cond_1e2

    .line 3213
    const-string v11, "    Op "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3215
    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const/16 v24, 0x1

    .line 3218
    :cond_1e2
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3219
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1f2
    .catchall {:try_start_178 .. :try_end_1f2} :catchall_15d

    .line 3201
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    :goto_1f2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-object/from16 v13, p3

    goto :goto_19d

    .line 3195
    .end local v12    # "j":I
    .end local v24    # "printedOpHeader":Z
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1f9
    move/from16 v12, v16

    goto :goto_18b

    .line 3195
    .end local v16    # "printedHeader":Z
    .end local v23    # "needSep":Z
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_1fc
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p3

    goto/16 :goto_176

    .line 3223
    .end local v2    # "i":I
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .restart local v23    # "needSep":Z
    :cond_202
    move/from16 v2, v23

    .line 3223
    .end local v23    # "needSep":Z
    .local v2, "needSep":Z
    :cond_204
    :try_start_204
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_20a
    .catchall {:try_start_204 .. :try_end_20a} :catchall_ac2

    if-lez v11, :cond_281

    if-gez v10, :cond_281

    .line 3224
    const/4 v11, 0x0

    .line 3225
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3225
    .local v2, "i":I
    .local v11, "needSep":Z
    .restart local v12    # "printedHeader":Z
    :goto_212
    :try_start_212
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_282

    .line 3226
    if-eqz v4, :cond_229

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_229

    .line 3227
    goto :goto_27e

    .line 3229
    :cond_229
    const/4 v11, 0x1

    .line 3230
    if-nez v12, :cond_232

    .line 3231
    const-string v13, "  Package mode watchers:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const/4 v12, 0x1

    .line 3234
    :cond_232
    const-string v13, "    Pkg "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3235
    const-string v13, ":"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 3237
    .local v13, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/16 v16, 0x0

    .line 3237
    .local v16, "j":I
    :goto_251
    move/from16 v27, v16

    .line 3237
    .end local v16    # "j":I
    .local v27, "j":I
    move/from16 v28, v11

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 3237
    .end local v11    # "needSep":Z
    .local v28, "needSep":Z
    move/from16 v29, v12

    move/from16 v12, v27

    if-ge v12, v11, :cond_27a

    .line 3238
    .end local v27    # "j":I
    .local v12, "j":I
    .local v29, "printedHeader":Z
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3239
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_273
    .catchall {:try_start_212 .. :try_end_273} :catchall_15d

    .line 3237
    add-int/lit8 v16, v12, 0x1

    .line 3237
    .end local v12    # "j":I
    .restart local v16    # "j":I
    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_251

    .line 3225
    .end local v13    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v16    # "j":I
    :cond_27a
    move/from16 v11, v28

    move/from16 v12, v29

    .line 3225
    .end local v28    # "needSep":Z
    .end local v29    # "printedHeader":Z
    .restart local v11    # "needSep":Z
    .local v12, "printedHeader":Z
    :goto_27e
    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    .line 3243
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .local v2, "needSep":Z
    :cond_281
    move v11, v2

    .line 3243
    .end local v2    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_282
    :try_start_282
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_288
    .catchall {:try_start_282 .. :try_end_288} :catchall_ac2

    if-lez v2, :cond_2e8

    if-gez v10, :cond_2e8

    .line 3244
    const/4 v2, 0x0

    .line 3245
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3245
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_28f
    :try_start_28f
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_2e6

    .line 3246
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3247
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_2b3

    move/from16 v30, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3247
    .end local v11    # "needSep":Z
    .local v30, "needSep":Z
    if-ltz v11, :cond_2b5

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3248
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_2b5

    .line 3249
    nop

    .line 3245
    move/from16 v11, v30

    goto :goto_2e3

    .line 3251
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_2b3
    move/from16 v30, v11

    .line 3251
    .end local v11    # "needSep":Z
    .restart local v30    # "needSep":Z
    :cond_2b5
    const/4 v11, 0x1

    .line 3252
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    if-nez v12, :cond_2c1

    .line 3253
    move/from16 v31, v11

    const-string v11, "  All op mode watchers:"

    .line 3253
    .end local v11    # "needSep":Z
    .local v31, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    const/4 v12, 0x1

    goto :goto_2c3

    .line 3256
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_2c1
    move/from16 v31, v11

    .line 3256
    .end local v11    # "needSep":Z
    .restart local v31    # "needSep":Z
    :goto_2c3
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3258
    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2e1
    .catchall {:try_start_28f .. :try_end_2e1} :catchall_15d

    .line 3245
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    move/from16 v11, v31

    .line 3245
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_2e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_28f

    .line 3261
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    :cond_2e6
    move/from16 v30, v11

    :cond_2e8
    :try_start_2e8
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_2ee
    .catchall {:try_start_2e8 .. :try_end_2ee} :catchall_ac2

    if-lez v2, :cond_3ad

    if-gez v5, :cond_3ad

    .line 3262
    const/4 v11, 0x1

    .line 3263
    const/4 v2, 0x0

    .line 3264
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3264
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_2f6
    :try_start_2f6
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_3a6

    .line 3265
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 3266
    .local v13, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v16

    if-gtz v16, :cond_313

    .line 3267
    nop

    .line 3264
    move-wide/from16 v34, v6

    move/from16 v32, v11

    goto/16 :goto_39c

    .line 3269
    :cond_313
    move/from16 v32, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 3269
    .end local v11    # "needSep":Z
    .local v32, "needSep":Z
    check-cast v16, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object/from16 v33, v16

    .line 3270
    .local v33, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    if-ltz v10, :cond_32b

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    if-gez v16, :cond_32b

    .line 3271
    nop

    .line 3264
    move-wide/from16 v34, v6

    goto/16 :goto_39c

    .line 3273
    :cond_32b
    if-eqz v4, :cond_33e

    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3273
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v11, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v34, "now":J
    if-ltz v6, :cond_342

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3274
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v3, v6, :cond_342

    .line 3275
    goto :goto_39c

    .line 3277
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_33e
    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    .line 3277
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v34    # "now":J
    :cond_342
    if-nez v12, :cond_34a

    .line 3278
    const-string v6, "  All op active watchers:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    const/4 v12, 0x1

    .line 3281
    :cond_34a
    const-string v6, "    "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3282
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3283
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 3282
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3284
    const-string v6, " ->"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    const-string v6, "        ["

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3286
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3287
    .local v6, "opCount":I
    const/4 v2, 0x0

    :goto_36f
    if-ge v2, v6, :cond_38f

    .line 3288
    if-lez v2, :cond_378

    .line 3289
    const/16 v7, 0x20

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3291
    :cond_378
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3292
    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_38c

    .line 3293
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3287
    :cond_38c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36f

    .line 3296
    :cond_38f
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_39c
    .catchall {:try_start_2f6 .. :try_end_39c} :catchall_15d

    .line 3264
    .end local v6    # "opCount":I
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v13    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :goto_39c
    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v32

    move-wide/from16 v6, v34

    goto/16 :goto_2f6

    .line 3301
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .local v6, "now":J
    .local v11, "needSep":Z
    :cond_3a6
    move-wide/from16 v34, v6

    move/from16 v32, v11

    const/16 v22, 0x1

    .line 3301
    .end local v6    # "now":J
    .end local v11    # "needSep":Z
    .restart local v32    # "needSep":Z
    .restart local v34    # "now":J
    goto :goto_3b1

    .line 3301
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v11    # "needSep":Z
    :cond_3ad
    move-wide/from16 v34, v6

    const/16 v22, 0x1

    .line 3301
    .end local v6    # "now":J
    .restart local v34    # "now":J
    :goto_3b1
    :try_start_3b1
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_3b7
    .catchall {:try_start_3b1 .. :try_end_3b7} :catchall_ac2

    if-lez v2, :cond_487

    if-gez v5, :cond_487

    .line 3302
    const/4 v11, 0x1

    .line 3303
    const/4 v2, 0x0

    .line 3304
    .local v2, "printedHeader":Z
    move v6, v2

    const/4 v2, 0x0

    .line 3304
    .local v2, "i":I
    .local v6, "printedHeader":Z
    :goto_3bf
    :try_start_3bf
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_475

    .line 3305
    const/4 v7, 0x0

    .line 3306
    .local v7, "printedClient":Z
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$ClientState;

    .line 3307
    .local v12, "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_3d6
    .catchall {:try_start_3bf .. :try_end_3d6} :catchall_47a

    if-lez v13, :cond_469

    .line 3308
    const/4 v13, 0x0

    .line 3309
    .local v13, "printedStarted":Z
    move/from16 v16, v13

    move v13, v7

    move v7, v6

    const/4 v6, 0x0

    .line 3309
    .local v6, "j":I
    .local v7, "printedHeader":Z
    .local v13, "printedClient":Z
    .local v16, "printedStarted":Z
    :goto_3de
    move/from16 v36, v3

    :try_start_3e0
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 3309
    .end local v3    # "dumpUid":I
    .local v36, "dumpUid":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_465

    .line 3310
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    .line 3311
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_3f9

    move/from16 v37, v11

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3311
    .end local v11    # "needSep":Z
    .local v37, "needSep":Z
    if-eq v11, v10, :cond_3fb

    .line 3312
    goto :goto_45d

    .line 3314
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_3f9
    move/from16 v37, v11

    .line 3314
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    :cond_3fb
    if-eqz v4, :cond_406

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_406

    .line 3315
    goto :goto_45d

    .line 3317
    :cond_406
    if-nez v7, :cond_40e

    .line 3318
    const-string v11, "  Clients:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    const/4 v7, 0x1

    .line 3321
    :cond_40e
    if-nez v13, :cond_42c

    .line 3322
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3323
    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3324
    const/4 v13, 0x1

    .line 3326
    :cond_42c
    if-nez v16, :cond_435

    .line 3327
    const-string v11, "      Started ops:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    const/16 v16, 0x1

    .line 3330
    :cond_435
    const-string v11, "        "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "uid="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 3331
    const-string v11, " pkg="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3332
    const-string v11, " op="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_45d
    .catchall {:try_start_3e0 .. :try_end_45d} :catchall_538

    .line 3309
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_45d
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_3de

    .line 3304
    .end local v6    # "j":I
    .end local v12    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v13    # "printedClient":Z
    .end local v16    # "printedStarted":Z
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_465
    move/from16 v37, v11

    move v6, v7

    .line 3304
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    goto :goto_46d

    .line 3304
    .end local v7    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .local v3, "dumpUid":I
    .local v6, "printedHeader":Z
    .restart local v11    # "needSep":Z
    :cond_469
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3304
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    :goto_46d
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_3bf

    .line 3337
    .end local v2    # "i":I
    .end local v6    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    .restart local v11    # "needSep":Z
    :cond_475
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3337
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    goto :goto_489

    .line 3567
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    :catchall_47a
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3567
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    goto/16 :goto_acd

    .line 3337
    .end local v36    # "dumpUid":I
    .restart local v0    # "nowUptime":J
    .restart local v3    # "dumpUid":I
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_487
    move/from16 v36, v3

    .line 3337
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    :goto_489
    :try_start_489
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_48f
    .catchall {:try_start_489 .. :try_end_48f} :catchall_ab6

    if-lez v2, :cond_532

    if-gez v10, :cond_532

    if-eqz v4, :cond_532

    if-gez v5, :cond_532

    .line 3339
    const/4 v2, 0x0

    .line 3340
    .local v2, "printedHeader":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3340
    .local v2, "o":I
    .local v3, "printedHeader":Z
    :goto_49a
    :try_start_49a
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_532

    .line 3341
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    .line 3342
    .local v6, "op":Ljava/lang/String;
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 3343
    .local v7, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    move v12, v3

    const/4 v3, 0x0

    .line 3343
    .local v3, "i":I
    .local v12, "printedHeader":Z
    :goto_4b6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_52d

    .line 3344
    if-nez v12, :cond_4c5

    .line 3345
    const-string v13, "  Audio Restrictions:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3346
    const/4 v12, 0x1

    .line 3347
    const/4 v11, 0x1

    .line 3349
    :cond_4c5
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 3350
    .local v13, "usage":I
    move/from16 v38, v11

    const-string v11, "    "

    .line 3350
    .end local v11    # "needSep":Z
    .local v38, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    const-string v11, " usage="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Restriction;

    .line 3353
    .local v11, "r":Lcom/android/server/AppOpsService$Restriction;
    move-object/from16 v39, v6

    const-string v6, ": mode="

    .line 3353
    .end local v6    # "op":Ljava/lang/String;
    .local v39, "op":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/AppOpsService$Restriction;->mode:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    iget-object v6, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_522

    .line 3355
    const-string v6, "      Exceptions:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    const/4 v6, 0x0

    .line 3356
    .local v6, "j":I
    :goto_503
    move-object/from16 v40, v7

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 3356
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v40, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_524

    .line 3357
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v40

    goto :goto_503

    .line 3343
    .end local v6    # "j":I
    .end local v11    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v13    # "usage":I
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_522
    move-object/from16 v40, v7

    .line 3343
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_524
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    goto :goto_4b6

    .line 3340
    .end local v3    # "i":I
    .end local v38    # "needSep":Z
    .end local v39    # "op":Ljava/lang/String;
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v11, "needSep":Z
    :cond_52d
    add-int/lit8 v2, v2, 0x1

    move v3, v12

    goto/16 :goto_49a

    .line 3363
    .end local v2    # "o":I
    .end local v12    # "printedHeader":Z
    :cond_532
    if-eqz v11, :cond_545

    .line 3364
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_537
    .catchall {:try_start_49a .. :try_end_537} :catchall_538

    goto :goto_545

    .line 3567
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v11    # "needSep":Z
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    :catchall_538
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    goto/16 :goto_acd

    .line 3366
    .restart local v0    # "nowUptime":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_545
    :goto_545
    const/4 v2, 0x0

    .line 3366
    .local v2, "i":I
    :goto_546
    move v13, v2

    .line 3366
    .end local v2    # "i":I
    .local v13, "i":I
    :try_start_547
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_97c

    .line 3367
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    move-object v12, v2

    .line 3368
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v6, v2

    .line 3369
    .local v6, "opModes":Landroid/util/SparseIntArray;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_55d
    .catchall {:try_start_547 .. :try_end_55d} :catchall_ab6

    move-object v7, v2

    .line 3371
    .local v7, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-gez v10, :cond_56d

    if-nez v4, :cond_56d

    if-ltz v5, :cond_565

    goto :goto_56d

    .line 3413
    :cond_565
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_66f

    .line 3372
    :cond_56d
    :goto_56d
    if-ltz v10, :cond_57e

    :try_start_56f
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_57c

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3373
    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_57c

    goto :goto_57e

    :cond_57c
    const/4 v2, 0x0

    goto :goto_580

    :cond_57e
    :goto_57e
    move/from16 v2, v22

    .line 3374
    .local v2, "hasOp":Z
    :goto_580
    if-nez v4, :cond_585

    move/from16 v3, v22

    goto :goto_586

    :cond_585
    const/4 v3, 0x0

    .line 3375
    .local v3, "hasPackage":Z
    :goto_586
    if-gez v5, :cond_58b

    move/from16 v16, v22

    goto :goto_58d

    :cond_58b
    const/16 v16, 0x0

    .line 3376
    .local v16, "hasMode":Z
    :goto_58d
    if-nez v16, :cond_5bb

    if-eqz v6, :cond_5bb

    .line 3377
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3377
    .local v16, "opi":I
    .local v17, "hasMode":Z
    :goto_595
    move/from16 v41, v16

    .line 3377
    .end local v16    # "opi":I
    .local v41, "opi":I
    if-nez v17, :cond_5b4

    move/from16 v42, v2

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3377
    .end local v2    # "hasOp":Z
    .local v42, "hasOp":Z
    move/from16 v43, v3

    move/from16 v3, v41

    if-ge v3, v2, :cond_5b8

    .line 3378
    .end local v41    # "opi":I
    .local v3, "opi":I
    .local v43, "hasPackage":Z
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, v5, :cond_5ad

    .line 3379
    const/16 v17, 0x1

    .line 3377
    :cond_5ad
    add-int/lit8 v16, v3, 0x1

    .line 3377
    .end local v3    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v2, v42

    move/from16 v3, v43

    goto :goto_595

    .line 3383
    .end local v16    # "opi":I
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .local v3, "hasPackage":Z
    :cond_5b4
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3383
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :cond_5b8
    move/from16 v16, v17

    goto :goto_5bf

    .line 3383
    .end local v17    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .restart local v3    # "hasPackage":Z
    .local v16, "hasMode":Z
    :cond_5bb
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3383
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :goto_5bf
    if-eqz v7, :cond_63c

    .line 3384
    move/from16 v3, v43

    const/4 v2, 0x0

    .line 3385
    .end local v43    # "hasPackage":Z
    .local v2, "pkgi":I
    .restart local v3    # "hasPackage":Z
    :goto_5c4
    if-eqz v42, :cond_5d3

    if-eqz v3, :cond_5d3

    if-nez v16, :cond_5cb

    goto :goto_5d3

    .line 3403
    .end local v2    # "pkgi":I
    :cond_5cb
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_639

    .line 3385
    .restart local v2    # "pkgi":I
    :cond_5d3
    :goto_5d3
    move/from16 v44, v13

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 3385
    .end local v13    # "i":I
    .local v44, "i":I
    if-ge v2, v13, :cond_635

    .line 3387
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Ops;

    .line 3388
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v42, :cond_5ed

    if-eqz v13, :cond_5ed

    invoke-virtual {v13, v10}, Lcom/android/server/AppOpsService$Ops;->indexOfKey(I)I

    move-result v17

    if-ltz v17, :cond_5ed

    .line 3389
    const/16 v42, 0x1

    .line 3391
    :cond_5ed
    if-nez v16, :cond_61d

    .line 3392
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3392
    .local v16, "opi":I
    .restart local v17    # "hasMode":Z
    :goto_5f3
    move/from16 v45, v16

    .line 3392
    .end local v16    # "opi":I
    .local v45, "opi":I
    if-nez v17, :cond_616

    move/from16 v46, v11

    invoke-virtual {v13}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v11

    .line 3392
    .end local v11    # "needSep":Z
    .local v46, "needSep":Z
    move-object/from16 v47, v8

    move/from16 v8, v45

    if-ge v8, v11, :cond_61a

    .line 3393
    .end local v45    # "opi":I
    .local v8, "opi":I
    .local v47, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v13, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Op;

    iget v11, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v11, v5, :cond_60f

    .line 3394
    const/16 v17, 0x1

    .line 3392
    :cond_60f
    add-int/lit8 v16, v8, 0x1

    .line 3392
    .end local v8    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_5f3

    .line 3398
    .end local v16    # "opi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_616
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3398
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_61a
    move/from16 v16, v17

    goto :goto_621

    .line 3398
    .end local v17    # "hasMode":Z
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    .local v16, "hasMode":Z
    :cond_61d
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3398
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_621
    if-nez v3, :cond_62c

    iget-object v8, v13, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_629
    .catchall {:try_start_56f .. :try_end_629} :catchall_538

    if-eqz v8, :cond_62c

    .line 3399
    const/4 v3, 0x1

    .line 3386
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_62c
    add-int/lit8 v2, v2, 0x1

    .line 3384
    move/from16 v13, v44

    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_5c4

    .line 3403
    .end local v2    # "pkgi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_635
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3403
    .end local v44    # "i":I
    .local v13, "i":I
    :goto_639
    move/from16 v43, v3

    goto :goto_642

    .line 3403
    .end local v3    # "hasPackage":Z
    .restart local v43    # "hasPackage":Z
    :cond_63c
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    .line 3403
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .end local v13    # "i":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_642
    :try_start_642
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_644
    .catchall {:try_start_642 .. :try_end_644} :catchall_ab6

    if-eqz v2, :cond_652

    if-nez v42, :cond_652

    .line 3404
    :try_start_648
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_64e
    .catchall {:try_start_648 .. :try_end_64e} :catchall_538

    if-lez v2, :cond_652

    .line 3405
    const/16 v42, 0x1

    .line 3408
    :cond_652
    if-eqz v42, :cond_951

    if-eqz v43, :cond_951

    if-nez v16, :cond_66f

    .line 3409
    nop

    .line 3366
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_965

    .line 3413
    .end local v16    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    :cond_66f
    :goto_66f
    :try_start_66f
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3414
    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3415
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3416
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I
    :try_end_690
    .catchall {:try_start_66f .. :try_end_690} :catchall_ab6

    if-eq v2, v3, :cond_6a0

    .line 3417
    :try_start_692
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6a0
    .catchall {:try_start_692 .. :try_end_6a0} :catchall_538

    .line 3420
    :cond_6a0
    :try_start_6a0
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_6a2
    .catchall {:try_start_6a0 .. :try_end_6a2} :catchall_ab6

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-eqz v2, :cond_6b5

    .line 3421
    :try_start_6a8
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v2, v3, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3423
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6b5
    .catchall {:try_start_6a8 .. :try_end_6b5} :catchall_538

    .line 3425
    :cond_6b5
    :try_start_6b5
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I
    :try_end_6b7
    .catchall {:try_start_6b5 .. :try_end_6b7} :catchall_ab6

    if-eqz v2, :cond_6c3

    .line 3426
    :try_start_6b9
    const-string v2, "    startNesting="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3427
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_6c3
    .catchall {:try_start_6b9 .. :try_end_6c3} :catchall_538

    .line 3429
    :cond_6c3
    :try_start_6c3
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_6c5
    .catchall {:try_start_6c3 .. :try_end_6c5} :catchall_ab6

    if-eqz v2, :cond_719

    if-ltz v5, :cond_6cc

    const/4 v2, 0x4

    if-ne v5, v2, :cond_719

    .line 3431
    :cond_6cc
    :try_start_6cc
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    const/4 v2, 0x0

    .line 3432
    .local v2, "j":I
    :goto_6d2
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_70f

    .line 3433
    if-ltz v10, :cond_6e5

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v10, v3, :cond_6e5

    .line 3434
    goto :goto_70c

    .line 3436
    :cond_6e5
    const-string v3, "      "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3437
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3438
    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_707

    const-string v3, "WATCHER"

    goto :goto_709

    :cond_707
    const-string v3, "SILENT"

    :goto_709
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    :goto_70c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d2

    .line 3441
    .end local v2    # "j":I
    :cond_70f
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3442
    iget-boolean v2, v12, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3444
    :cond_719
    const/16 v21, 0x1

    .line 3446
    .end local v46    # "needSep":Z
    .local v21, "needSep":Z
    if-eqz v6, :cond_751

    .line 3447
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3448
    .local v2, "opModeCount":I
    const/4 v3, 0x0

    .line 3448
    .local v3, "j":I
    :goto_722
    if-ge v3, v2, :cond_751

    .line 3449
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3450
    .local v8, "code":I
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 3451
    .local v11, "mode":I
    if-ltz v10, :cond_731

    if-eq v10, v8, :cond_731

    .line 3452
    goto :goto_74e

    .line 3454
    :cond_731
    if-ltz v5, :cond_736

    if-eq v5, v11, :cond_736

    .line 3455
    goto :goto_74e

    .line 3457
    :cond_736
    const-string v13, "      "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    const-string v13, ": mode="

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_74e
    .catchall {:try_start_6cc .. :try_end_74e} :catchall_538

    .line 3448
    .end local v8    # "code":I
    .end local v11    # "mode":I
    :goto_74e
    add-int/lit8 v3, v3, 0x1

    goto :goto_722

    .line 3462
    .end local v2    # "opModeCount":I
    .end local v3    # "j":I
    :cond_751
    if-nez v7, :cond_76a

    .line 3463
    nop

    .line 3366
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_94e

    .line 3466
    :cond_76a
    const/4 v2, 0x0

    .line 3466
    .local v2, "pkgi":I
    :goto_76b
    move v13, v2

    .line 3466
    .end local v2    # "pkgi":I
    .local v13, "pkgi":I
    :try_start_76c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_93a

    .line 3467
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;
    :try_end_778
    .catchall {:try_start_76c .. :try_end_778} :catchall_ab6

    move-object v11, v2

    .line 3468
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v4, :cond_7a1

    :try_start_77b
    iget-object v2, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_781
    .catchall {:try_start_77b .. :try_end_781} :catchall_538

    if-nez v2, :cond_7a1

    .line 3469
    nop

    .line 3466
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_91c

    .line 3471
    :cond_7a1
    const/4 v2, 0x0

    .line 3472
    .local v2, "printedPackage":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3472
    .local v2, "j":I
    .local v3, "printedPackage":Z
    :goto_7a4
    move v8, v2

    .line 3472
    .end local v2    # "j":I
    .local v8, "j":I
    :try_start_7a5
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v8, v2, :cond_901

    .line 3473
    invoke-virtual {v11, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;
    :try_end_7b1
    .catchall {:try_start_7a5 .. :try_end_7b1} :catchall_ab6

    .line 3474
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_7ba

    move-wide/from16 v48, v0

    :try_start_7b5
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3474
    .end local v0    # "nowUptime":J
    .local v48, "nowUptime":J
    if-eq v10, v0, :cond_7bc

    .line 3475
    goto :goto_7c3

    .line 3477
    .end local v48    # "nowUptime":J
    .restart local v0    # "nowUptime":J
    :cond_7ba
    move-wide/from16 v48, v0

    .line 3477
    .end local v0    # "nowUptime":J
    .restart local v48    # "nowUptime":J
    :cond_7bc
    if-ltz v5, :cond_7e5

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, v0, :cond_7e5

    .line 3478
    nop

    .line 3472
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_7c3
    move/from16 v50, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v53, v10

    move-object v5, v11

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    move-wide/from16 v23, v48

    const/16 v32, 0x0

    goto/16 :goto_8d7

    .line 3480
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_7e5
    if-nez v3, :cond_7f7

    .line 3481
    const-string v0, "    Package "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7f6
    .catchall {:try_start_7b5 .. :try_end_7f6} :catchall_538

    .line 3482
    const/4 v3, 0x1

    .line 3484
    .end local v3    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_7f7
    move v0, v3

    :try_start_7f8
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3485
    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3486
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v3, v1

    .line 3487
    .local v3, "switchOp":I
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I
    :try_end_81d
    .catchall {:try_start_7f8 .. :try_end_81d} :catchall_ab6

    if-eq v3, v1, :cond_84d

    .line 3488
    :try_start_81f
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3489
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {v11, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 3491
    .local v1, "switchObj":Lcom/android/server/AppOpsService$Op;
    if-eqz v1, :cond_838

    .line 3492
    move/from16 v50, v0

    iget v0, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 3492
    .end local v0    # "printedPackage":Z
    .local v50, "printedPackage":Z
    goto :goto_83e

    .line 3492
    .end local v50    # "printedPackage":Z
    .restart local v0    # "printedPackage":Z
    :cond_838
    move/from16 v50, v0

    .line 3492
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 3493
    .local v0, "mode":I
    :goto_83e
    move-object/from16 v51, v1

    const-string v1, "="

    .line 3493
    .end local v1    # "switchObj":Lcom/android/server/AppOpsService$Op;
    .local v51, "switchObj":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_84c
    .catchall {:try_start_81f .. :try_end_84c} :catchall_538

    .line 3493
    .end local v0    # "mode":I
    .end local v51    # "switchObj":Lcom/android/server/AppOpsService$Op;
    goto :goto_84f

    .line 3495
    .end local v50    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_84d
    move/from16 v50, v0

    .line 3495
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    :goto_84f
    :try_start_84f
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3496
    const-string v0, "          Access: "

    const-string v16, "                  "

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->time:[J
    :try_end_85a
    .catchall {:try_start_84f .. :try_end_85a} :catchall_ab6

    move-object/from16 v17, v1

    move-wide/from16 v23, v48

    move-object v1, v15

    .line 3496
    .end local v48    # "nowUptime":J
    .local v23, "nowUptime":J
    move/from16 v52, v13

    move-object v13, v2

    move-object v2, v14

    .line 3496
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    .local v52, "pkgi":I
    move/from16 v27, v3

    move/from16 v26, v36

    move-object v3, v0

    .line 3496
    .end local v3    # "switchOp":I
    .end local v36    # "dumpUid":I
    .local v26, "dumpUid":I
    .local v27, "switchOp":I
    move-object/from16 v28, v4

    move-object/from16 v4, v16

    .line 3496
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .local v28, "dumpPackage":Ljava/lang/String;
    move/from16 v29, v5

    move-object/from16 v5, v17

    .line 3496
    .end local v5    # "dumpMode":I
    .local v29, "dumpMode":I
    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v6, v34

    move-object/from16 v8, v47

    :try_start_879
    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3499
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v34    # "now":J
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .local v6, "now":J
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .local v30, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v31, "j":I
    const-string v1, "          Reject: "

    const-string v2, "                  "

    iget-object v3, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:[J
    :try_end_882
    .catchall {:try_start_879 .. :try_end_882} :catchall_8fa

    move v4, v10

    move-object v10, v15

    .line 3499
    .end local v10    # "dumpOp":I
    .local v4, "dumpOp":I
    move/from16 v53, v4

    move-object v5, v11

    move/from16 v4, v22

    const/16 v16, 0x0

    move-object v11, v14

    .line 3499
    .end local v4    # "dumpOp":I
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    .local v53, "dumpOp":I
    move-object/from16 v22, v12

    move/from16 v32, v16

    move-object v12, v1

    .line 3499
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v22, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object v4, v13

    move/from16 v1, v44

    move/from16 v25, v52

    move-object v13, v2

    .line 3499
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v44    # "i":I
    .end local v52    # "pkgi":I
    .local v1, "i":I
    .local v4, "op":Lcom/android/server/AppOpsService$Op;
    .local v25, "pkgi":I
    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-wide v15, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_89f
    invoke-direct/range {v10 .. v18}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3502
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8b7

    .line 3503
    const-string v10, "          Running start at: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3504
    iget-wide v10, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v10, v19, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3505
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8c9

    .line 3506
    :cond_8b7
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v10, :cond_8c9

    .line 3507
    const-string v10, "          duration="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3508
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v10, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3509
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3511
    :cond_8c9
    :goto_8c9
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eqz v10, :cond_8d7

    .line 3512
    const-string v10, "          startNesting="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3513
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 3472
    .end local v4    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v27    # "switchOp":I
    :cond_8d7
    :goto_8d7
    add-int/lit8 v4, v31, 0x1

    .line 3472
    .end local v31    # "j":I
    .local v4, "j":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-object v11, v5

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v13, v25

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v3, v50

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_7a4

    .line 3567
    .end local v0    # "opModes":Landroid/util/SparseIntArray;
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v21    # "needSep":Z
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v25    # "pkgi":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v50    # "printedPackage":Z
    .end local v53    # "dumpOp":I
    .restart local v10    # "dumpOp":I
    :catchall_8fa
    move-exception v0

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3567
    .end local v10    # "dumpOp":I
    .restart local v53    # "dumpOp":I
    goto/16 :goto_acd

    .line 3466
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v6, "opModes":Landroid/util/SparseIntArray;
    .restart local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v10    # "dumpOp":I
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v13, "pkgi":I
    .restart local v19    # "nowElapsed":J
    .restart local v21    # "needSep":Z
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_901
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "dumpOp":I
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "pkgi":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .restart local v1    # "i":I
    .local v6, "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v23    # "nowUptime":J
    .restart local v25    # "pkgi":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v53    # "dumpOp":I
    :goto_91c
    add-int/lit8 v4, v25, 0x1

    .line 3466
    .end local v25    # "pkgi":I
    .local v4, "pkgi":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_76b

    .line 3366
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_93a
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_94e
    move/from16 v11, v21

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_967

    .line 3366
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "needSep":Z
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .restart local v0    # "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_951
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_965
    move/from16 v11, v46

    .line 3366
    .end local v46    # "needSep":Z
    .local v11, "needSep":Z
    :goto_967
    add-int/lit8 v0, v1, 0x1

    .line 3366
    .end local v1    # "i":I
    .local v0, "i":I
    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v34, v6

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v10, v53

    const/16 v22, 0x1

    move v2, v0

    move-wide/from16 v0, v23

    goto/16 :goto_546

    .line 3518
    .end local v6    # "now":J
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    :cond_97c
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move/from16 v46, v11

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v11    # "needSep":Z
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .restart local v6    # "now":J
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v46    # "needSep":Z
    .restart local v53    # "dumpOp":I
    if-eqz v46, :cond_993

    .line 3519
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3522
    :cond_993
    iget-object v0, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3523
    .local v0, "userRestrictionCount":I
    move/from16 v1, v32

    .line 3523
    .restart local v1    # "i":I
    :goto_99b
    if-ge v1, v0, :cond_ab4

    .line 3524
    iget-object v4, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 3525
    .local v4, "token":Landroid/os/IBinder;
    iget-object v5, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3526
    .local v5, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  User restrictions for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v10, :cond_9d1

    .line 3529
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_9d3

    :cond_9d1
    move/from16 v12, v32

    :goto_9d3
    move v10, v12

    .line 3530
    .local v10, "restrictionCount":I
    if-lez v10, :cond_a61

    .line 3531
    const-string v11, "      Restricted ops:"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    move/from16 v11, v32

    .line 3532
    .local v11, "j":I
    :goto_9dd
    if-ge v11, v10, :cond_a61

    .line 3533
    iget-object v12, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3534
    .local v12, "userId":I
    iget-object v13, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Z

    .line 3535
    .local v13, "restrictedOps":[Z
    if-nez v13, :cond_9f8

    .line 3536
    nop

    .line 3532
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    goto :goto_a57

    .line 3538
    :cond_9f8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3539
    .local v14, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    array-length v15, v13

    .line 3541
    .local v15, "restrictedOpCount":I
    move/from16 v16, v32

    .line 3541
    .local v16, "k":I
    :goto_a05
    move/from16 v54, v16

    .line 3541
    .end local v16    # "k":I
    .local v54, "k":I
    move/from16 v55, v0

    move/from16 v0, v54

    if-ge v0, v15, :cond_a37

    .line 3542
    .end local v54    # "k":I
    .local v0, "k":I
    .local v55, "userRestrictionCount":I
    aget-boolean v16, v13, v0

    if-eqz v16, :cond_a29

    .line 3543
    move-object/from16 v56, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3543
    .end local v4    # "token":Landroid/os/IBinder;
    .local v56, "token":Landroid/os/IBinder;
    move-wide/from16 v57, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_a21

    .line 3544
    .end local v6    # "now":J
    .local v57, "now":J
    const-string v4, ", "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    :cond_a21
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2e

    .line 3541
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_a29
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3541
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    :goto_a2e
    add-int/lit8 v16, v0, 0x1

    .line 3541
    .end local v0    # "k":I
    .restart local v16    # "k":I
    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto :goto_a05

    .line 3549
    .end local v16    # "k":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_a37
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3549
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const-string v0, "        "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3551
    const-string v0, " restricted ops: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3532
    .end local v12    # "userId":I
    .end local v13    # "restrictedOps":[Z
    .end local v14    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v15    # "restrictedOpCount":I
    :goto_a57
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto/16 :goto_9dd

    .line 3555
    .end local v11    # "j":I
    .end local v55    # "userRestrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .local v0, "userRestrictionCount":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_a61
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3555
    .end local v0    # "userRestrictionCount":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v55    # "userRestrictionCount":I
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_a73

    .line 3556
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_a75

    :cond_a73
    move/from16 v12, v32

    :goto_a75
    move v0, v12

    .line 3557
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_aac

    .line 3558
    const-string v4, "      Excluded packages:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    move/from16 v4, v32

    .line 3559
    .local v4, "j":I
    :goto_a7f
    if-ge v4, v0, :cond_aac

    .line 3560
    iget-object v7, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 3561
    .local v7, "userId":I
    iget-object v11, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 3562
    .local v11, "packageNames":[Ljava/lang/String;
    const-string v12, "        "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "user: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3563
    const-string v12, " packages: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    .end local v7    # "userId":I
    .end local v11    # "packageNames":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a7f

    .line 3523
    .end local v0    # "excludedPackageCount":I
    .end local v4    # "j":I
    .end local v5    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    .end local v10    # "restrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    :cond_aac
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v55

    move-wide/from16 v6, v57

    goto/16 :goto_99b

    .line 3567
    .end local v1    # "i":I
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v23    # "nowUptime":J
    .end local v46    # "needSep":Z
    .end local v55    # "userRestrictionCount":I
    .end local v57    # "now":J
    :cond_ab4
    monitor-exit p0

    .line 3568
    return-void

    .line 3567
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    .restart local v36    # "dumpUid":I
    :catchall_ab6
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    .line 3567
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v36    # "dumpUid":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_acd

    .line 3567
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v3, "dumpUid":I
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    :catchall_ac2
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3567
    .end local v3    # "dumpUid":I
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_acd
    monitor-exit p0
    :try_end_ace
    .catchall {:try_start_89f .. :try_end_ace} :catchall_acf

    throw v0

    :catchall_acf
    move-exception v0

    goto :goto_acd
.end method

.method enforceManageAppOpsModes(III)V
    .registers 10
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 1029
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1030
    return-void

    .line 1032
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1033
    .local v0, "callingUser":I
    monitor-enter p0

    .line 1034
    :try_start_c
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 1035
    if-ltz p3, :cond_23

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 1038
    monitor-exit p0

    return-void

    .line 1041
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_35

    .line 1042
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_APP_OPS_MODES"

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    .line 1042
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1044
    return-void

    .line 1041
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1863
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1864
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1865
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1867
    return-void

    .line 1869
    :cond_d
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_12

    .line 1870
    return-void

    .line 1872
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/server/AppOpsService$ClientState;

    .line 1873
    .local v1, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1874
    const/4 v2, 0x1

    :try_start_17
    invoke-direct {p0, p2, p3, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1875
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v2, :cond_1f

    .line 1876
    monitor-exit p0

    return-void

    .line 1878
    :cond_1f
    iget-object v3, v1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a8

    .line 1883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_b4

    .line 1885
    .local v5, "identity":J
    :try_start_2c
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 1886
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1885
    invoke-virtual {v3, v0, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_6d

    .line 1887
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for non-existing package="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_2c .. :try_end_68} :catchall_a3

    .line 1893
    :try_start_68
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 1890
    return-void

    .line 1893
    :cond_6d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1894
    nop

    .line 1895
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation not started: uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1896
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1895
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    monitor-exit p0

    return-void

    .line 1893
    :catchall_a3
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1899
    .end local v5    # "identity":J
    :cond_a8
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 1900
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v3, :cond_b2

    .line 1901
    invoke-direct {p0, p2, p3, p4, v4}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 1903
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_b2
    monitor-exit p0

    .line 1904
    return-void

    .line 1903
    :catchall_b4
    move-exception v2

    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_68 .. :try_end_b6} :catchall_b4

    throw v2
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V
    .registers 9
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "finishNested"    # Z

    .line 1961
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    if-eqz p2, :cond_8

    goto :goto_16

    .line 1975
    :cond_8
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 1976
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_8e

    .line 1962
    :cond_16
    :goto_16
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eq v0, v1, :cond_68

    if-eqz p2, :cond_1d

    goto :goto_68

    .line 1966
    :cond_1d
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1963
    :cond_68
    :goto_68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1964
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 1970
    :goto_7e
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lt v0, v1, :cond_8b

    .line 1971
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 1973
    :cond_8b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 1978
    :goto_8e
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 960
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 962
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 966
    :cond_1b
    monitor-enter p0

    .line 967
    const/4 v1, 0x0

    :try_start_1d
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 969
    .local v1, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_25

    .line 970
    monitor-exit p0

    return-object v4

    .line 972
    :cond_25
    invoke-direct {p0, v1, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 973
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2d

    .line 974
    monitor-exit p0

    return-object v4

    .line 976
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 979
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    monitor-exit p0

    return-object v3

    .line 981
    .end local v1    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 15
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 929
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 928
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 932
    :try_start_12
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_6a

    .line 933
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1b
    if-ge v0, v1, :cond_68

    .line 934
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$UidState;

    .line 935
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_62

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 936
    goto :goto_62

    .line 938
    :cond_32
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 939
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_65

    .line 940
    .local v6, "packageCount":I
    move-object v7, v3

    move v3, v2

    .local v3, "j":I
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3a
    if-ge v3, v6, :cond_61

    .line 941
    :try_start_3c
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;

    .line 942
    .local v8, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v8, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 943
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_5e

    .line 944
    if-nez v7, :cond_50

    .line 945
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 947
    :cond_50
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v11, v12, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 949
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_6f

    .line 940
    .end local v8    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 933
    .end local v3    # "j":I
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "packageCount":I
    :cond_61
    move-object v3, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_62
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 953
    .end local v0    # "i":I
    .end local v1    # "uidStateCount":I
    :catchall_65
    move-exception v0

    move-object v7, v3

    goto :goto_6d

    :cond_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 954
    return-object v3

    .line 953
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_6a
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_6d
    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6f

    throw v0

    :catchall_6f
    move-exception v0

    goto :goto_6d
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1466
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_16

    .line 1467
    new-instance v1, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    .line 1468
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_16
    monitor-exit p0

    return-object v0

    .line 1471
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 987
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 986
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 988
    monitor-enter p0

    .line 989
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 990
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1a

    .line 991
    monitor-exit p0

    return-object v4

    .line 993
    :cond_1a
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 994
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_24

    .line 995
    monitor-exit p0

    return-object v4

    .line 997
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1000
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    monitor-exit p0

    return-object v2

    .line 1002
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 4
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3934
    const/4 v0, 0x1

    return v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 3666
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 3668
    return v1

    .line 3671
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3672
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3673
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 3674
    return v1

    .line 3676
    :cond_1c
    monitor-enter p0

    .line 3677
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_25
    if-ltz v2, :cond_50

    .line 3678
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 3679
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_36
    if-ltz v5, :cond_4d

    .line 3680
    iget-object v6, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 3681
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_4a

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne v7, p2, :cond_4a

    monitor-exit p0

    return v3

    .line 3679
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 3677
    .end local v4    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v5    # "j":I
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 3684
    .end local v2    # "i":I
    :cond_50
    monitor-exit p0

    .line 3685
    return v1

    .line 3684
    :catchall_52
    move-exception v1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_52

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1628
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1629
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1630
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1631
    .local v6, "resolvedPackageName":Ljava/lang/String;
    if-nez v6, :cond_e

    .line 1632
    const/4 v0, 0x1

    return v0

    .line 1634
    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .registers 16
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 1607
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1609
    .local v6, "proxyUid":I
    invoke-static {v6, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1610
    .local v7, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v8, 0x1

    if-nez v7, :cond_f

    .line 1611
    return v8

    .line 1613
    :cond_f
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    .line 1615
    .local v9, "proxyMode":I
    if-nez v9, :cond_34

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_22

    goto :goto_34

    .line 1618
    :cond_22
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1619
    .local v10, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v10, :cond_29

    .line 1620
    return v8

    .line 1622
    :cond_29
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, v10

    move v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1616
    .end local v10    # "resolveProxiedPackageName":Ljava/lang/String;
    :cond_34
    :goto_34
    return v9
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2823
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2824
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 747
    monitor-enter p0

    .line 748
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 749
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_d

    .line 750
    monitor-exit p0

    return-void

    .line 753
    :cond_d
    const/4 v1, 0x0

    .line 756
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    .line 757
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    move-object v1, v2

    .line 761
    :cond_1b
    if-eqz v1, :cond_31

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 762
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_31

    .line 763
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 767
    :cond_31
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 768
    .local v2, "clientCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_39
    if-ge v4, v2, :cond_7e

    .line 769
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 770
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_48

    .line 771
    goto :goto_7b

    .line 773
    :cond_48
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 774
    .local v6, "opCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_50
    if-ltz v7, :cond_7b

    .line 775
    iget-object v8, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 776
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne p1, v9, :cond_78

    iget-object v9, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 777
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 778
    iget-object v9, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 779
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_78

    .line 780
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 774
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_78
    add-int/lit8 v7, v7, -0x1

    goto :goto_50

    .line 768
    .end local v5    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v6    # "opCount":I
    .end local v7    # "j":I
    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 787
    .end local v4    # "i":I
    :cond_7e
    if-eqz v1, :cond_a1

    .line 788
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 790
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    .line 791
    .local v4, "opCount":I
    move v5, v3

    .local v5, "i":I
    :goto_88
    if-ge v5, v4, :cond_a1

    .line 792
    invoke-virtual {v1, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 793
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9e

    .line 794
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v6, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 791
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 799
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "clientCount":I
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    :cond_a1
    monitor-exit p0

    .line 800
    return-void

    .line 799
    :catchall_a3
    move-exception v0

    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1954
    if-nez p1, :cond_4

    .line 1955
    const/4 v0, -0x1

    return v0

    .line 1957
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 643
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 644
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 645
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsServiceState;->init(Landroid/content/Context;)V

    .line 647
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2359
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2362
    .local v1, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 2362
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_52

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1d

    .line 2363
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_52

    .line 2364
    :cond_1d
    if-eq v3, v2, :cond_c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_23

    .line 2365
    goto :goto_c

    .line 2368
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2369
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2370
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_51

    .line 2372
    :cond_34
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2372
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2376
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_c

    .line 2377
    :cond_52
    return-void
.end method

.method readState()V
    .registers 14

    .line 2201
    const/4 v0, -0x1

    .line 2202
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 2203
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_1bf

    .line 2206
    :try_start_5
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_198
    .catchall {:try_start_5 .. :try_end_b} :catchall_196

    .line 2210
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 2209
    nop

    .line 2211
    const/4 v3, 0x0

    .line 2212
    .local v3, "success":Z
    :try_start_e
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_196

    .line 2214
    :try_start_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2215
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2217
    :goto_20
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 2217
    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2c

    if-eq v6, v7, :cond_2c

    .line 2217
    .end local v6    # "type":I
    goto :goto_20

    .line 2222
    .restart local v6    # "type":I
    :cond_2c
    if-ne v6, v8, :cond_a3

    .line 2226
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2227
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_3d

    .line 2228
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 2231
    :cond_3d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 2232
    .local v8, "outerDepth":I
    :cond_41
    :goto_41
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_93

    const/4 v9, 0x3

    if-ne v6, v9, :cond_51

    .line 2233
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_93

    .line 2234
    :cond_51
    if-eq v6, v9, :cond_41

    const/4 v9, 0x4

    if-ne v6, v9, :cond_57

    .line 2235
    goto :goto_41

    .line 2238
    :cond_57
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2239
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 2240
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_92

    .line 2241
    :cond_68
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 2242
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_92

    .line 2244
    :cond_75
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2244
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_92} :catch_15b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_92} :catch_138
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_92} :catch_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_92} :catch_f3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_92} :catch_d1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_92} :catch_af
    .catchall {:try_start_13 .. :try_end_92} :catchall_ac

    .line 2248
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_92
    goto :goto_41

    .line 2249
    :cond_93
    const/4 v3, 0x1

    .line 2263
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_9b

    .line 2264
    :try_start_96
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_196

    .line 2267
    :cond_9b
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0
    .catchall {:try_start_9b .. :try_end_9e} :catchall_196

    .line 2269
    :goto_9e
    goto/16 :goto_17e

    .line 2268
    :catch_a0
    move-exception v4

    .line 2270
    goto/16 :goto_17e

    .line 2223
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_a3
    :try_start_a3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_a3 .. :try_end_ac} :catch_15b
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_ac} :catch_138
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ac} :catch_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_ac} :catch_f3
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ac} :catch_d1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a3 .. :try_end_ac} :catch_af
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_ac

    .line 2263
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_ac
    move-exception v4

    goto/16 :goto_189

    .line 2260
    :catch_af
    move-exception v4

    .line 2261
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b0
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_b0 .. :try_end_c6} :catchall_ac

    .line 2263
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_cd

    .line 2264
    :try_start_c8
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_196

    .line 2267
    :cond_cd
    :try_start_cd
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_a0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_196

    goto :goto_9e

    .line 2258
    :catch_d1
    move-exception v4

    .line 2259
    .local v4, "e":Ljava/io/IOException;
    :try_start_d2
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_d2 .. :try_end_e8} :catchall_ac

    .line 2263
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_ef

    .line 2264
    :try_start_ea
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_ef
    .catchall {:try_start_ea .. :try_end_ef} :catchall_196

    .line 2267
    :cond_ef
    :try_start_ef
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_a0
    .catchall {:try_start_ef .. :try_end_f2} :catchall_196

    goto :goto_9e

    .line 2256
    :catch_f3
    move-exception v4

    .line 2257
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f4
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_f4 .. :try_end_10a} :catchall_ac

    .line 2263
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_111

    .line 2264
    :try_start_10c
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_111
    .catchall {:try_start_10c .. :try_end_111} :catchall_196

    .line 2267
    :cond_111
    :try_start_111
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_a0
    .catchall {:try_start_111 .. :try_end_114} :catchall_196

    goto :goto_9e

    .line 2254
    :catch_115
    move-exception v4

    .line 2255
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_116
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_116 .. :try_end_12c} :catchall_ac

    .line 2263
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_133

    .line 2264
    :try_start_12e
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_133
    .catchall {:try_start_12e .. :try_end_133} :catchall_196

    .line 2267
    :cond_133
    :try_start_133
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_a0
    .catchall {:try_start_133 .. :try_end_136} :catchall_196

    goto/16 :goto_9e

    .line 2252
    :catch_138
    move-exception v4

    .line 2253
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_139
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_139 .. :try_end_14f} :catchall_ac

    .line 2263
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_156

    .line 2264
    :try_start_151
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_156
    .catchall {:try_start_151 .. :try_end_156} :catchall_196

    .line 2267
    :cond_156
    :try_start_156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_a0
    .catchall {:try_start_156 .. :try_end_159} :catchall_196

    goto/16 :goto_9e

    .line 2250
    :catch_15b
    move-exception v4

    .line 2251
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_15c
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catchall {:try_start_15c .. :try_end_172} :catchall_ac

    .line 2263
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_179

    .line 2264
    :try_start_174
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_179
    .catchall {:try_start_174 .. :try_end_179} :catchall_196

    .line 2267
    :cond_179
    :try_start_179
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_a0
    .catchall {:try_start_179 .. :try_end_17c} :catchall_196

    goto/16 :goto_9e

    .line 2271
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_17e
    :try_start_17e
    monitor-exit p0
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_196

    .line 2272
    :try_start_17f
    monitor-exit v1
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_1bf

    .line 2273
    monitor-enter p0

    .line 2274
    :try_start_181
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->upgradeLocked(I)V

    .line 2275
    monitor-exit p0

    .line 2276
    return-void

    .line 2275
    :catchall_186
    move-exception v1

    monitor-exit p0
    :try_end_188
    .catchall {:try_start_181 .. :try_end_188} :catchall_186

    throw v1

    .line 2263
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_189
    if-nez v3, :cond_190

    .line 2264
    :try_start_18b
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_190
    .catchall {:try_start_18b .. :try_end_190} :catchall_196

    .line 2267
    :cond_190
    :try_start_190
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194
    .catchall {:try_start_190 .. :try_end_193} :catchall_196

    .line 2269
    goto :goto_195

    .line 2268
    :catch_194
    move-exception v5

    .line 2269
    :goto_195
    :try_start_195
    throw v4

    .line 2271
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :catchall_196
    move-exception v2

    goto :goto_1bd

    .line 2207
    :catch_198
    move-exception v2

    .line 2208
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    monitor-exit p0
    :try_end_1bb
    .catchall {:try_start_195 .. :try_end_1bb} :catchall_196

    :try_start_1bb
    monitor-exit v1
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1bf

    return-void

    .line 2271
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1bd
    :try_start_1bd
    monitor-exit p0
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_196

    :try_start_1be
    throw v2

    .line 2272
    :catchall_1bf
    move-exception v2

    monitor-exit v1
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1bf

    throw v2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 28
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2381
    move-object/from16 v3, p2

    const-string/jumbo v0, "n"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2382
    .local v5, "uid":I
    const-string/jumbo v0, "p"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2383
    .local v6, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2384
    .local v7, "isPrivileged":Z
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_48

    .line 2386
    :try_start_20
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2387
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_3e

    .line 2388
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 2389
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v11, v3, v9, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 2390
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_3d

    .line 2391
    iget v12, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_36} :catch_3f

    and-int/2addr v12, v8

    if-eqz v12, :cond_3b

    move v12, v10

    goto :goto_3c

    :cond_3b
    move v12, v9

    :goto_3c
    move v7, v12

    .line 2394
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3d
    goto :goto_47

    .line 2396
    :cond_3e
    return-void

    .line 2398
    .end local v0    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_3f
    move-exception v0

    .line 2399
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "AppOps"

    const-string v12, "Could not contact PackageManager"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_47
    goto :goto_4c

    .line 2402
    :cond_48
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2404
    :goto_4c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2406
    .local v0, "outerDepth":I
    :goto_50
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .line 2406
    .local v12, "type":I
    if-eq v11, v10, :cond_2d6

    const/4 v11, 0x3

    if-ne v12, v11, :cond_65

    .line 2407
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_61

    goto :goto_65

    .line 2506
    :cond_61
    move/from16 v24, v0

    goto/16 :goto_2d8

    .line 2408
    :cond_65
    :goto_65
    if-eq v12, v11, :cond_2cb

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6f

    .line 2409
    nop

    .line 2404
    move/from16 v24, v0

    goto/16 :goto_2cd

    .line 2412
    :cond_6f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2413
    .local v14, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "op"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2ab

    .line 2414
    invoke-direct {v1, v5, v10}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v15

    .line 2415
    .local v15, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_8b

    .line 2416
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2419
    :cond_8b
    new-instance v8, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v9, "n"

    .line 2420
    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v15, v3, v9}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2422
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    sub-int/2addr v9, v10

    .line 2422
    .local v9, "i":I
    :goto_a0
    if-ltz v9, :cond_28e

    .line 2423
    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 2424
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 2425
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x2

    const/16 v20, 0x5

    sparse-switch v18, :sswitch_data_2e6

    goto/16 :goto_191

    :sswitch_b7
    const-string/jumbo v13, "tfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/4 v13, 0x6

    goto/16 :goto_192

    :sswitch_c3
    const-string/jumbo v13, "rfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xc

    goto/16 :goto_192

    :sswitch_d0
    const-string/jumbo v13, "tt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    move/from16 v13, v20

    goto/16 :goto_192

    :sswitch_dd
    const-string/jumbo v13, "tp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/4 v13, 0x4

    goto/16 :goto_192

    :sswitch_e9
    const-string/jumbo v13, "tf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/4 v13, 0x7

    goto/16 :goto_192

    :sswitch_f5
    const-string/jumbo v13, "tc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0x9

    goto/16 :goto_192

    :sswitch_102
    const-string/jumbo v13, "tb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0x8

    goto/16 :goto_192

    :sswitch_10f
    const-string/jumbo v13, "rt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xb

    goto/16 :goto_192

    :sswitch_11c
    const-string/jumbo v13, "rp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xa

    goto/16 :goto_192

    :sswitch_129
    const-string/jumbo v13, "rf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xd

    goto :goto_192

    :sswitch_135
    const-string/jumbo v13, "rc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xf

    goto :goto_192

    :sswitch_141
    const-string/jumbo v13, "rb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0xe

    goto :goto_192

    :sswitch_14d
    const-string/jumbo v13, "pu"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    move/from16 v13, v19

    goto :goto_192

    :sswitch_159
    const-string/jumbo v13, "pp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/4 v13, 0x3

    goto :goto_192

    :sswitch_164
    const-string/jumbo v13, "t"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0x10

    goto :goto_192

    :sswitch_170
    const-string/jumbo v13, "r"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/16 v13, 0x11

    goto :goto_192

    :sswitch_17c
    const-string/jumbo v13, "m"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    const/4 v13, 0x0

    goto :goto_192

    :sswitch_187
    const-string v13, "d"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_191

    move v13, v10

    goto :goto_192

    :cond_191
    :goto_191
    const/4 v13, -0x1

    :goto_192
    packed-switch v13, :pswitch_data_330

    .line 2489
    const/16 v17, 0x3

    const/16 v20, 0x4

    const-string v13, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    const-string v0, "Unknown attribute in \'op\' tag: "

    .line 2489
    .end local v0    # "outerDepth":I
    .local v24, "outerDepth":I
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    goto/16 :goto_282

    .line 2486
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :pswitch_1b3
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2487
    goto :goto_20a

    .line 2482
    :pswitch_1bc
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2483
    goto :goto_20a

    .line 2477
    :pswitch_1c5
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2478
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    .line 2479
    goto :goto_20a

    .line 2473
    :pswitch_1ce
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2474
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    .line 2475
    goto :goto_20a

    .line 2469
    :pswitch_1d9
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2470
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    .line 2471
    goto :goto_20a

    .line 2465
    :pswitch_1e4
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2466
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aput-wide v22, v13, v19

    .line 2467
    goto :goto_20a

    .line 2462
    :pswitch_1ed
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2463
    goto :goto_20a

    .line 2458
    :pswitch_1f6
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2459
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    .line 2460
    goto :goto_20a

    .line 2455
    :pswitch_201
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    .line 2456
    nop

    .line 2422
    .end local v0    # "outerDepth":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    :goto_20a
    move/from16 v24, v0

    const/16 v17, 0x3

    const/16 v20, 0x4

    goto/16 :goto_282

    .line 2452
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :pswitch_212
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    .line 2453
    nop

    .line 2422
    move/from16 v24, v0

    const/16 v17, 0x3

    goto :goto_282

    .line 2449
    :pswitch_222
    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    .line 2450
    goto :goto_280

    .line 2445
    :pswitch_22f
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 2446
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    aput-wide v21, v13, v19

    .line 2447
    goto :goto_280

    .line 2442
    :pswitch_23c
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2443
    goto :goto_280

    .line 2439
    :pswitch_249
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    .line 2440
    goto :goto_280

    .line 2436
    :pswitch_258
    const/16 v17, 0x3

    const/16 v20, 0x4

    iput-object v11, v8, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2437
    goto :goto_280

    .line 2433
    :pswitch_25f
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2434
    goto :goto_280

    .line 2430
    :pswitch_26a
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2431
    goto :goto_280

    .line 2427
    :pswitch_275
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2428
    nop

    .line 2422
    .end local v0    # "outerDepth":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    :goto_280
    move/from16 v24, v0

    :goto_282
    add-int/lit8 v9, v9, -0x1

    move/from16 v11, v17

    move/from16 v13, v20

    move/from16 v0, v24

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_a0

    .line 2494
    .end local v9    # "i":I
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_28e
    move/from16 v24, v0

    .line 2494
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    iget-object v0, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 2495
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_2a5

    .line 2496
    new-instance v4, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v4, v3, v15, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v0, v4

    .line 2497
    iget-object v4, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    :cond_2a5
    iget v4, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v4, v8}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2500
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "uidState":Lcom/android/server/AppOpsService$UidState;
    goto :goto_2ca

    .line 2501
    .end local v24    # "outerDepth":I
    .local v0, "outerDepth":I
    :cond_2ab
    move/from16 v24, v0

    .line 2501
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <pkg>: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2501
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2505
    .end local v14    # "tagName":Ljava/lang/String;
    :goto_2ca
    goto :goto_2cd

    .line 2404
    .end local v12    # "type":I
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_2cb
    move/from16 v24, v0

    .line 2404
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    :goto_2cd
    move/from16 v0, v24

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_50

    .line 2506
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v12    # "type":I
    :cond_2d6
    move/from16 v24, v0

    .line 2506
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    :goto_2d8
    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2507
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v0, :cond_2e4

    .line 2508
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2510
    :cond_2e4
    return-void

    nop

    :sswitch_data_2e6
    .sparse-switch
        0x64 -> :sswitch_187
        0x6d -> :sswitch_17c
        0x72 -> :sswitch_170
        0x74 -> :sswitch_164
        0xe00 -> :sswitch_159
        0xe05 -> :sswitch_14d
        0xe30 -> :sswitch_141
        0xe31 -> :sswitch_135
        0xe34 -> :sswitch_129
        0xe3e -> :sswitch_11c
        0xe42 -> :sswitch_10f
        0xe6e -> :sswitch_102
        0xe6f -> :sswitch_f5
        0xe72 -> :sswitch_e9
        0xe7c -> :sswitch_dd
        0xe80 -> :sswitch_d0
        0x1b8bf -> :sswitch_c3
        0x1c041 -> :sswitch_b7
    .end sparse-switch

    :pswitch_data_330
    .packed-switch 0x0
        :pswitch_275
        :pswitch_26a
        :pswitch_25f
        :pswitch_258
        :pswitch_249
        :pswitch_23c
        :pswitch_22f
        :pswitch_222
        :pswitch_212
        :pswitch_201
        :pswitch_1f6
        :pswitch_1ed
        :pswitch_1e4
        :pswitch_1d9
        :pswitch_1ce
        :pswitch_1c5
        :pswitch_1bc
        :pswitch_1b3
    .end packed-switch
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2331
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2332
    .local v0, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2334
    .local v2, "outerDepth":I
    :cond_10
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 2334
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_7d

    const/4 v3, 0x3

    if-ne v4, v3, :cond_21

    .line 2335
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_7d

    .line 2336
    :cond_21
    if-eq v4, v3, :cond_10

    const/4 v3, 0x4

    if-ne v4, v3, :cond_27

    .line 2337
    goto :goto_10

    .line 2340
    :cond_27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2341
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2342
    const-string/jumbo v6, "n"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2343
    .local v6, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2344
    .local v7, "mode":I
    invoke-direct {p0, v0, v5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    .line 2345
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v8, :cond_59

    .line 2346
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2348
    :cond_59
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_7c

    .line 2350
    :cond_5f
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2351
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2350
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2354
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_7c
    goto :goto_10

    .line 2355
    :cond_7d
    return-void
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .line 3917
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsServiceState;->registerCallback(Lcom/android/internal/app/IOpsCallback;)I

    move-result v0

    return v0
.end method

.method public removeUser(I)V
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3652
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3653
    monitor-enter p0

    .line 3654
    :try_start_7
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3655
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .line 3655
    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 3656
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3657
    .local v2, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 3655
    .end local v2    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 3659
    .end local v1    # "i":I
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V

    .line 3660
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 3661
    return-void

    .line 3660
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 32
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    .line 1268
    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1269
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1270
    .local v5, "callingUid":I
    const-string/jumbo v14, "resetAllModes"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1273
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 1274
    .local v1, "reqUid":I
    if-eqz v8, :cond_2a

    .line 1276
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_29

    move v1, v0

    .line 1280
    goto :goto_2a

    .line 1278
    :catch_29
    move-exception v0

    .line 1283
    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :cond_2a
    :goto_2a
    move v10, v1

    invoke-virtual {v7, v6, v5, v10}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1285
    const/4 v1, 0x0

    .line 1286
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, "changed":Z
    :try_start_31
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_26e

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    .line 1288
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v2, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :goto_3a
    move v1, v2

    .line 1288
    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_1e5

    .line 1289
    :try_start_3d
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 1291
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1292
    .local v3, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v3, :cond_eb

    iget v13, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_59

    if-ne v10, v4, :cond_51

    goto :goto_59

    .line 1311
    :cond_51
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_f1

    .line 1293
    :cond_59
    :goto_59
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1294
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .line 1294
    .local v14, "j":I
    :goto_5f
    if-ltz v14, :cond_eb

    .line 1295
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1296
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_da

    .line 1297
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1298
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_72
    .catchall {:try_start_3d .. :try_end_72} :catchall_1dd

    if-gtz v16, :cond_80

    .line 1299
    const/4 v12, 0x0

    :try_start_75
    iput-object v12, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_78

    goto :goto_80

    .line 1363
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_78
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_273

    .line 1301
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_80
    :goto_80
    :try_start_80
    iget v12, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    array-length v4, v12
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_1dd

    move-object/from16 v19, v3

    move-object v3, v11

    const/4 v11, 0x0

    .line 1301
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v19, "opModes":Landroid/util/SparseIntArray;
    :goto_8b
    if-ge v11, v4, :cond_d4

    :try_start_8d
    aget-object v16, v12, v11

    move-object/from16 v20, v16

    .line 1302
    .local v20, "packageName":Ljava/lang/String;
    move/from16 v21, v4

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_cc

    move/from16 v22, v5

    :try_start_97
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1303
    .end local v5    # "callingUid":I
    .local v22, "callingUid":I
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_c4

    .line 1302
    move/from16 v23, v6

    move-object/from16 v6, v20

    :try_start_a3
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    .line 1302
    .end local v20    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v23, "callingPid":I
    move-object v3, v4

    .line 1304
    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1305
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1304
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_b6
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_c0

    move-object v3, v4

    .line 1301
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_8b

    .line 1363
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    :catchall_c0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1f1

    .line 1363
    .end local v23    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_c4
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v19, v22

    .line 1363
    .end local v6    # "callingPid":I
    .restart local v23    # "callingPid":I
    goto/16 :goto_273

    .line 1363
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_cc
    move-exception v0

    move-object v1, v3

    move/from16 v19, v5

    move/from16 v16, v6

    goto/16 :goto_1e3

    .line 1294
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    :cond_d4
    move/from16 v22, v5

    move/from16 v23, v6

    move-object v11, v3

    .line 1294
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    goto :goto_e0

    .line 1294
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v3, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_da
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1294
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_e0
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    const/4 v4, -0x1

    goto/16 :goto_5f

    .line 1311
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_eb
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1311
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_f1
    :try_start_f1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_f7

    .line 1312
    goto/16 :goto_1d5

    .line 1315
    :cond_f7
    const/4 v3, -0x1

    if-eq v9, v3, :cond_104

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 1316
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_104

    .line 1318
    goto/16 :goto_1d5

    .line 1321
    :cond_104
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1322
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1323
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    const/16 v17, 0x0

    .line 1324
    .local v17, "uidChanged":Z
    :goto_110
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 1325
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1326
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1327
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_12b

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12b

    .line 1329
    goto :goto_110

    .line 1331
    :cond_12b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;

    .line 1332
    .local v12, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1332
    .local v13, "j":I
    :goto_137
    if-ltz v13, :cond_1a9

    .line 1333
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 1334
    .local v14, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_19a

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v24, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1335
    .end local v0    # "changed":Z
    .local v24, "changed":Z
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-eq v15, v0, :cond_195

    .line 1336
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1337
    const/4 v0, 0x1

    .line 1338
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    const/16 v17, 0x1

    .line 1339
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v25, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 1339
    .end local v0    # "changed":Z
    .local v25, "changed":Z
    move-object/from16 v26, v3

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1339
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v26, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v27, v5

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1340
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v27, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1339
    invoke-static {v11, v15, v0, v6, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_176
    .catchall {:try_start_f1 .. :try_end_176} :catchall_1ef

    move-object v3, v0

    .line 1341
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :try_start_177
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v11, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1342
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1341
    invoke-static {v3, v0, v5, v6, v11}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    .line 1343
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_191

    .line 1344
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V
    :try_end_191
    .catchall {:try_start_177 .. :try_end_191} :catchall_c0

    .line 1332
    .end local v14    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_191
    move-object v11, v3

    move/from16 v0, v25

    goto :goto_1a2

    .line 1332
    .end local v25    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v24    # "changed":Z
    :cond_195
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1332
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    goto :goto_1a0

    .line 1332
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_19a
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1332
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :goto_1a0
    move/from16 v0, v24

    .line 1332
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_1a2
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    goto :goto_137

    .line 1348
    .end local v13    # "j":I
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1a9
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1348
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :try_start_1af
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_1b8

    .line 1349
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1351
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1b8
    nop

    .line 1323
    move/from16 v0, v24

    move-object/from16 v3, v26

    goto/16 :goto_110

    .line 1352
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1bf
    move-object/from16 v26, v3

    .line 1352
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 1353
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1355
    :cond_1ce
    if-eqz v17, :cond_1d5

    .line 1356
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1288
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v17    # "uidChanged":Z
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1d5
    :goto_1d5
    add-int/lit8 v2, v1, -0x1

    .line 1288
    .end local v1    # "i":I
    .local v2, "i":I
    move/from16 v5, v22

    move/from16 v6, v23

    goto/16 :goto_3a

    .line 1363
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    :catchall_1dd
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    .line 1363
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v16, "callingPid":I
    .local v19, "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_1e3
    goto/16 :goto_273

    .line 1360
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_1e5
    move/from16 v22, v5

    move/from16 v23, v6

    .line 1360
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    if-eqz v0, :cond_1f7

    .line 1361
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1ee
    .catchall {:try_start_1af .. :try_end_1ee} :catchall_1ef

    .line 1361
    .end local v0    # "changed":Z
    goto :goto_1f7

    .line 1363
    :catchall_1ef
    move-exception v0

    move-object v1, v11

    .line 1363
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_1f1
    move/from16 v19, v22

    move/from16 v16, v23

    goto/16 :goto_273

    .line 1363
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_1f7
    :goto_1f7
    :try_start_1f7
    monitor-exit p0
    :try_end_1f8
    .catchall {:try_start_1f7 .. :try_end_1f8} :catchall_267

    .line 1364
    if-eqz v11, :cond_262

    .line 1365
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_202
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_262

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1366
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1367
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    .line 1368
    .local v14, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    .line 1368
    .local v1, "i":I
    :goto_21e
    move v15, v1

    .line 1368
    .end local v1    # "i":I
    .local v15, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_25b

    .line 1369
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1370
    .local v6, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    .line 1372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1370
    move-object v2, v7

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v28, v0

    move-object v0, v5

    move/from16 v19, v22

    move-object/from16 v5, v16

    .line 1370
    .end local v22    # "callingUid":I
    .restart local v19    # "callingUid":I
    move-object/from16 v20, v6

    move/from16 v16, v23

    move-object/from16 v6, v18

    .line 1370
    .end local v6    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .local v20, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1368
    .end local v20    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    add-int/lit8 v1, v15, 0x1

    .line 1368
    .end local v15    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v0, v28

    goto :goto_21e

    .line 1374
    .end local v1    # "i":I
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v14    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_25b
    move-object/from16 v28, v0

    move/from16 v19, v22

    move/from16 v16, v23

    .line 1374
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_202

    .line 1376
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_262
    move/from16 v19, v22

    move/from16 v16, v23

    .line 1376
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    return-void

    .line 1363
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :catchall_267
    move-exception v0

    move/from16 v19, v22

    move/from16 v16, v23

    move-object v1, v11

    .line 1363
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_273

    .line 1363
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v5    # "callingUid":I
    .local v6, "callingPid":I
    :catchall_26e
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    .line 1363
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_273
    :try_start_273
    monitor-exit p0
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_275

    throw v0

    :catchall_275
    move-exception v0

    goto :goto_273
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1560
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1561
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1562
    monitor-enter p0

    .line 1563
    :try_start_12
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1564
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v0, :cond_27

    .line 1565
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1566
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1568
    :cond_27
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1569
    if-eqz p4, :cond_54

    .line 1570
    new-instance v1, Lcom/android/server/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 1571
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1572
    if-eqz p5, :cond_51

    .line 1573
    array-length v2, p5

    .line 1574
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1575
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v2, :cond_51

    .line 1576
    aget-object v4, p5, v3

    .line 1577
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 1578
    iget-object v5, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1575
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 1582
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_51
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1584
    .end local v0    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_6a

    .line 1586
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 1587
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1586
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1588
    return-void

    .line 1584
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1153
    const/4 v0, 0x0

    .line 1154
    .local v0, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1155
    monitor-enter p0

    .line 1156
    const/4 v1, 0x0

    :try_start_15
    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1157
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1158
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_66

    .line 1159
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v3, p4, :cond_66

    .line 1160
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1161
    if-eqz v1, :cond_2d

    .line 1162
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1164
    :cond_2d
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1165
    .local v3, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v3, :cond_42

    .line 1166
    if-nez v0, :cond_3f

    .line 1167
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1169
    :cond_3f
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1171
    :cond_42
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v3, v4

    .line 1172
    if-eqz v3, :cond_58

    .line 1173
    if-nez v0, :cond_55

    .line 1174
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1176
    :cond_55
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1178
    :cond_58
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-ne p4, v4, :cond_63

    .line 1181
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1183
    :cond_63
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1186
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_15 .. :try_end_67} :catchall_80

    .line 1187
    if-eqz v0, :cond_7f

    .line 1188
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    .line 1190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1188
    move-object v3, p0

    move-object v4, v0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1192
    :cond_7f
    return-void

    .line 1186
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1
.end method

.method public setUidMode(III)V
    .registers 23
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1048
    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1049
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1050
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 1052
    .end local p1    # "code":I
    .local v10, "code":I
    monitor-enter p0

    .line 1053
    :try_start_19
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1055
    .local v0, "defaultMode":I
    const/4 v11, 0x0

    invoke-direct {v7, v8, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1056
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x0

    if-nez v1, :cond_44

    .line 1057
    if-ne v9, v0, :cond_29

    .line 1058
    monitor-exit p0

    return-void

    .line 1060
    :cond_29
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, v8}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v1, v2

    .line 1061
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1062
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1064
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_7e

    .line 1065
    :cond_44
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_5a

    .line 1066
    if-eq v9, v0, :cond_7e

    .line 1067
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1068
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_7e

    .line 1072
    :cond_5a
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_64

    .line 1073
    monitor-exit p0

    return-void

    .line 1075
    :cond_64
    if-ne v9, v0, :cond_76

    .line 1076
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1077
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_7b

    .line 1078
    iput-object v12, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_7b

    .line 1081
    :cond_76
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    :cond_7b
    :goto_7b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1085
    .end local v0    # "defaultMode":I
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_7e
    :goto_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_19 .. :try_end_7f} :catchall_173

    .line 1087
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1088
    .local v13, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1090
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 1091
    :try_start_85
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1092
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_b8

    .line 1093
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_93
    .catchall {:try_start_85 .. :try_end_93} :catchall_170

    .line 1094
    .local v2, "callbackCount":I
    move-object v3, v1

    move v1, v11

    .local v1, "i":I
    .local v3, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_95
    if-ge v1, v2, :cond_b7

    .line 1095
    :try_start_97
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1096
    .local v4, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1097
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1098
    if-nez v3, :cond_ad

    .line 1099
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v6

    .line 1101
    :cond_ad
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_b3

    .line 1094
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 1123
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "callbackCount":I
    :catchall_b3
    move-exception v0

    move-object v1, v3

    goto/16 :goto_171

    .line 1105
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_b7
    move-object v1, v3

    .end local v3    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_b8
    :try_start_b8
    array-length v2, v13
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_170

    move-object v14, v1

    move-object v1, v0

    move v0, v11

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v14, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_bc
    if-ge v0, v2, :cond_100

    :try_start_be
    aget-object v3, v13, v0

    .line 1106
    .local v3, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v1, v4

    .line 1107
    if-eqz v1, :cond_f8

    .line 1108
    if-nez v14, :cond_d3

    .line 1109
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1111
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object v14, v4

    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_d3
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 1112
    .local v4, "callbackCount":I
    move v5, v11

    .local v5, "i":I
    :goto_d8
    if-ge v5, v4, :cond_f8

    .line 1113
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1114
    .local v6, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 1115
    .local v15, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_f1

    .line 1116
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v11

    .line 1117
    invoke-virtual {v14, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :cond_f1
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1112
    .end local v6    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v15    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto :goto_d8

    .line 1105
    .end local v3    # "uidPackageName":Ljava/lang/String;
    .end local v4    # "callbackCount":I
    .end local v5    # "i":I
    :cond_f8
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_bc

    .line 1123
    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_fc
    move-exception v0

    move-object v1, v14

    goto/16 :goto_171

    :cond_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_be .. :try_end_101} :catchall_fc

    .line 1125
    if-nez v14, :cond_104

    .line 1126
    return-void

    .line 1129
    :cond_104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_105
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_16f

    .line 1130
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1131
    .local v11, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 1132
    .local v15, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_138

    .line 1133
    iget-object v6, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1135
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    .line 1133
    move-object v2, v7

    move-object v3, v11

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_169

    .line 1138
    :cond_138
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1139
    .local v12, "reportedPackageCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_13d
    move v6, v1

    .end local v1    # "j":I
    .local v6, "j":I
    if-ge v6, v12, :cond_169

    .line 1140
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1141
    .local v16, "reportedPackageName":Ljava/lang/String;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1143
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1141
    move-object v2, v7

    move-object v3, v11

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v16

    .end local v6    # "j":I
    .local v17, "j":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    .end local v16    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "j":I
    .restart local v1    # "j":I
    move/from16 v8, p2

    goto :goto_13d

    .line 1129
    .end local v1    # "j":I
    .end local v11    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageCount":I
    .end local v15    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_169
    :goto_169
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p2

    const/4 v12, 0x0

    goto :goto_105

    .line 1147
    .end local v0    # "i":I
    :cond_16f
    return-void

    .line 1123
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :catchall_170
    move-exception v0

    :goto_171
    :try_start_171
    monitor-exit p0
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_170

    throw v0

    .line 1085
    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "uidPackageNames":[Ljava/lang/String;
    :catchall_173
    move-exception v0

    :try_start_174
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 3593
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 3594
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 3595
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 3594
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 3597
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 3598
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 3600
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 3602
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3606
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3607
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3609
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 3578
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3579
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3580
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    const/4 v0, 0x0

    move v1, v0

    .line 3581
    .local v1, "i":I
    :goto_e
    const/16 v2, 0x4e

    if-ge v1, v2, :cond_27

    .line 3582
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v8

    .line 3583
    .local v8, "restriction":Ljava/lang/String;
    if-eqz v8, :cond_24

    .line 3584
    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3581
    .end local v8    # "restriction":Ljava/lang/String;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3588
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 855
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 858
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 859
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 860
    const/4 v0, 0x1

    .line 862
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 863
    if-eqz v0, :cond_17

    .line 864
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 866
    :cond_17
    return-void

    .line 862
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 1772
    invoke-direct {v1, v9}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1773
    invoke-direct {v1, v8}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1774
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1775
    .local v10, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v10, :cond_14

    .line 1776
    return v0

    .line 1778
    :cond_14
    const/4 v2, 0x0

    .line 1779
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    const/4 v11, 0x0

    .line 1781
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    const/4 v12, 0x0

    .line 1782
    .local v12, "resultMode":I
    const/4 v3, 0x0

    .line 1784
    .local v3, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/server/AppOpsService$ClientState;

    .line 1785
    .local v13, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1786
    const/4 v4, 0x0

    :try_start_1e
    invoke-direct {v1, v9, v10, v0, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v4
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1a8

    move-object v7, v4

    .line 1788
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_28

    .line 1791
    const/4 v0, 0x2

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1ad

    return v0

    .line 1793
    :cond_28
    :try_start_28
    invoke-direct {v1, v7, v8, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_1a8

    move-object v6, v4

    .line 1794
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    :try_start_2d
    invoke-direct {v1, v9, v8, v10}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_1a0

    if-eqz v2, :cond_39

    .line 1795
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_35

    return v0

    .line 1824
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_35
    move-exception v0

    move-object v2, v6

    goto/16 :goto_1ab

    .line 1797
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_39
    :try_start_39
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    move v5, v2

    .line 1798
    .local v5, "switchCode":I
    iget-object v2, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_1a0

    move-object v4, v2

    .line 1801
    .end local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    :try_start_41
    iget-object v2, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    if-eqz v2, :cond_97

    iget-object v2, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_97

    .line 1802
    iget-object v2, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v2

    .line 1803
    .local v2, "uidMode":I
    if-eqz v2, :cond_8a

    if-eqz p5, :cond_68

    if-eq v2, v3, :cond_5f

    goto :goto_68

    .line 1812
    .end local v2    # "uidMode":I
    :cond_5f
    move-object/from16 v16, v4

    move v2, v5

    move-object/from16 v17, v11

    move v4, v0

    move-object v11, v6

    move-object v0, v7

    goto :goto_92

    .line 1808
    .restart local v2    # "uidMode":I
    :cond_68
    :goto_68
    iget-object v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v3

    .line 1809
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;
    :try_end_74
    .catchall {:try_start_41 .. :try_end_74} :catchall_194

    const/4 v14, 0x1

    move v15, v2

    move-object v2, v0

    .end local v2    # "uidMode":I
    .local v15, "uidMode":I
    move v3, v9

    move-object/from16 v16, v4

    move-object v4, v10

    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v16, "uidState":Lcom/android/server/AppOpsService$UidState;
    move v0, v5

    move v5, v8

    .end local v5    # "switchCode":I
    .local v0, "switchCode":I
    move-object/from16 v17, v11

    move-object v11, v6

    move v6, v15

    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    move/from16 v18, v0

    move-object v0, v7

    move v7, v14

    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    .local v18, "switchCode":I
    :try_start_85
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1810
    monitor-exit p0

    return v15

    .line 1812
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "uidMode":I
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "switchCode":I
    .restart local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v5    # "switchCode":I
    .restart local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_8a
    move-object/from16 v16, v4

    move v2, v5

    move-object/from16 v17, v11

    move v4, v0

    move-object v11, v6

    move-object v0, v7

    .line 1824
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "switchCode":I
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v2, "switchCode":I
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_92
    move-object/from16 v7, v16

    move-object/from16 v6, v17

    goto :goto_dc

    .line 1813
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v5    # "switchCode":I
    .restart local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_97
    move-object/from16 v16, v4

    move v2, v5

    move-object/from16 v17, v11

    move v4, v0

    move-object v11, v6

    move-object v0, v7

    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "switchCode":I
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "switchCode":I
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    if-eq v2, v8, :cond_ae

    invoke-direct {v1, v0, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6
    :try_end_a5
    .catchall {:try_start_85 .. :try_end_a5} :catchall_a6

    goto :goto_af

    .line 1824
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    :catchall_a6
    move-exception v0

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v11, v17

    goto/16 :goto_1ab

    .line 1813
    .restart local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "switchCode":I
    :cond_ae
    move-object v6, v11

    :goto_af
    move-object v5, v6

    .line 1814
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .local v5, "switchOp":Lcom/android/server/AppOpsService$Op;
    :try_start_b0
    invoke-virtual {v5}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v6
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_18e

    .line 1815
    .local v6, "mode":I
    if-eqz v6, :cond_d8

    if-eqz p5, :cond_be

    if-eq v6, v3, :cond_bb

    goto :goto_be

    .line 1822
    :cond_bb
    move-object/from16 v7, v16

    goto :goto_da

    .line 1820
    :cond_be
    :goto_be
    :try_start_be
    iget-object v3, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:[J
    :try_end_c0
    .catchall {:try_start_be .. :try_end_c0} :catchall_d0

    move-object/from16 v7, v16

    :try_start_c2
    iget v4, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v3, v4
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_cb

    goto :goto_da

    .line 1824
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v6    # "mode":I
    :catchall_cb
    move-exception v0

    move-object v3, v7

    move-object v2, v11

    goto/16 :goto_192

    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_d0
    move-exception v0

    move-object/from16 v7, v16

    move-object v3, v7

    move-object v2, v11

    move-object v11, v5

    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    goto/16 :goto_1ab

    .line 1822
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "switchCode":I
    .restart local v6    # "mode":I
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d8
    move-object/from16 v7, v16

    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :goto_da
    move v12, v6

    .line 1824
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "mode":I
    move-object v6, v5

    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .local v6, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_dc
    :try_start_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_183

    move v5, v2

    .line 1826
    .end local v2    # "switchCode":I
    .local v5, "switchCode":I
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1827
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-static {v10}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 1828
    const/4 v12, 0x0

    goto :goto_100

    .line 1830
    :cond_f0
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1831
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v12

    .line 1832
    iput v12, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1834
    :cond_100
    :goto_100
    const/4 v0, 0x5

    if-ne v12, v0, :cond_10b

    .line 1835
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v5, v9, v10}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v0

    .line 1837
    .end local v12    # "resultMode":I
    .local v0, "resultMode":I
    move v14, v0

    goto :goto_10c

    .end local v0    # "resultMode":I
    .restart local v12    # "resultMode":I
    :cond_10b
    move v14, v12

    .end local v12    # "resultMode":I
    .local v14, "resultMode":I
    :goto_10c
    if-eqz v14, :cond_11b

    .line 1838
    iget-object v0, v11, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v2, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 1857
    move-object/from16 v12, p4

    goto :goto_165

    .line 1842
    :cond_11b
    monitor-enter p0

    .line 1843
    :try_start_11c
    iget v0, v11, Lcom/android/server/AppOpsService$Op;->startNesting:I
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_177

    if-nez v0, :cond_14b

    .line 1844
    :try_start_120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 1845
    iget-object v0, v11, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v2, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 1846
    iget-object v0, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v2, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 1847
    const/4 v0, -0x1

    iput v0, v11, Lcom/android/server/AppOpsService$Op;->duration:I
    :try_end_13b
    .catchall {:try_start_120 .. :try_end_13b} :catchall_142

    .line 1848
    move-object/from16 v12, p4

    const/4 v0, 0x1

    :try_start_13e
    invoke-direct {v1, v8, v9, v12, v0}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_162

    goto :goto_14d

    .line 1855
    :catchall_142
    move-exception v0

    move-object/from16 v12, p4

    .end local v5    # "switchCode":I
    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v15, "switchCode":I
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_145
    move v15, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_17f

    .line 1850
    .end local v15    # "switchCode":I
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v5    # "switchCode":I
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_14b
    move-object/from16 v12, p4

    :goto_14d
    :try_start_14d
    iget v0, v11, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v11, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 1851
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 1852
    iget-object v0, v13, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;
    :try_end_15a
    .catchall {:try_start_14d .. :try_end_15a} :catchall_175

    if-eqz v0, :cond_164

    .line 1853
    :try_start_15c
    iget-object v0, v13, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catchall {:try_start_15c .. :try_end_161} :catchall_162

    goto :goto_164

    .line 1855
    :catchall_162
    move-exception v0

    goto :goto_145

    :cond_164
    :goto_164
    :try_start_164
    monitor-exit p0
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_175

    .line 1857
    :goto_165
    iget-object v2, v1, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v0, 0x0

    move v3, v9

    move-object v4, v10

    move v15, v5

    .end local v5    # "switchCode":I
    .restart local v15    # "switchCode":I
    move-object/from16 v17, v6

    move v6, v14

    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v16, v7

    move v7, v0

    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1858
    return v14

    .line 1855
    .end local v15    # "switchCode":I
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v5    # "switchCode":I
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_175
    move-exception v0

    goto :goto_17a

    :catchall_177
    move-exception v0

    move-object/from16 v12, p4

    :goto_17a
    move v15, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .end local v5    # "switchCode":I
    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v15    # "switchCode":I
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_17f
    :try_start_17f
    monitor-exit p0
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_181

    throw v0

    :catchall_181
    move-exception v0

    goto :goto_17f

    .line 1824
    .end local v14    # "resultMode":I
    .end local v15    # "switchCode":I
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "resultMode":I
    :catchall_183
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v11, v17

    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_1ab

    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .local v5, "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_18e
    move-exception v0

    move-object v2, v11

    move-object/from16 v3, v16

    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_192
    move-object v11, v5

    goto :goto_1ab

    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    :catchall_194
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move-object v11, v6

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v11, v17

    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_1ab

    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_1a0
    move-exception v0

    move-object/from16 v17, v11

    move-object v11, v6

    move-object v2, v11

    move-object/from16 v11, v17

    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_1ab

    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_1a8
    move-exception v0

    move-object/from16 v17, v11

    :goto_1ab
    :try_start_1ab
    monitor-exit p0
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1ad

    throw v0

    :catchall_1ad
    move-exception v0

    goto :goto_1ab
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 15
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 1720
    const/4 v0, -0x1

    .line 1721
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1722
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1723
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 1725
    move v0, v7

    .line 1727
    :cond_14
    const/4 v9, 0x0

    if-eqz p1, :cond_31

    .line 1728
    const/16 v1, 0x4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1728
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 1731
    :cond_31
    if-nez p2, :cond_34

    .line 1732
    return-void

    .line 1734
    :cond_34
    monitor-enter p0

    .line 1735
    :try_start_35
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1736
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_52

    .line 1737
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 1738
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    :cond_52
    move-object v10, v1

    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    new-instance v11, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 1742
    .local v1, "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_60
    if-ge v9, v2, :cond_6a

    aget v3, p1, v9

    .line 1743
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1742
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    .line 1745
    .end local v1    # "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :cond_6a
    monitor-exit p0

    .line 1746
    return-void

    .line 1745
    :catchall_6c
    move-exception v1

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_35 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1390
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    .line 1395
    const/4 v10, -0x1

    .line 1396
    .local v10, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1397
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1402
    .local v12, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    const/16 v2, 0x4d

    invoke-static {v1, v13, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1404
    if-nez p4, :cond_29

    .line 1405
    return-void

    .line 1407
    :cond_29
    monitor-enter p0

    .line 1408
    if-eq v1, v13, :cond_35

    :try_start_2c
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    goto :goto_36

    .line 1431
    :catchall_31
    move-exception v0

    move v14, v1

    goto/16 :goto_97

    .line 1408
    :cond_35
    move v0, v1

    :goto_36
    move v14, v0

    .line 1409
    .end local p1    # "op":I
    .local v14, "op":I
    :try_start_37
    iget-object v0, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1410
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-nez v0, :cond_5d

    .line 1411
    new-instance v15, Lcom/android/server/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object v2, v8

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AppOpsService$ModeCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    .line 1412
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_5d
    if-eq v14, v13, :cond_77

    .line 1415
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1416
    .local v1, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_74

    .line 1417
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1418
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1420
    :cond_74
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1422
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_77
    if-eqz v9, :cond_91

    .line 1423
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1424
    .restart local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_8e

    .line 1425
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1426
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :cond_8e
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1430
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_91
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1431
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1432
    return-void

    .line 1431
    :catchall_96
    move-exception v0

    :goto_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_37 .. :try_end_98} :catchall_96

    throw v0
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 1750
    if-nez p1, :cond_3

    .line 1751
    return-void

    .line 1753
    :cond_3
    monitor-enter p0

    .line 1754
    :try_start_4
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1755
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1756
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_14

    .line 1757
    monitor-exit p0

    return-void

    .line 1759
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1760
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_29

    .line 1762
    if-nez v2, :cond_26

    .line 1763
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/AppOpsService$ActiveCallback;->destroy()V

    .line 1760
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1766
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_29
    monitor-exit p0

    .line 1767
    return-void

    .line 1766
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1436
    if-nez p1, :cond_3

    .line 1437
    return-void

    .line 1439
    :cond_3
    monitor-enter p0

    .line 1440
    :try_start_4
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1441
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v0, :cond_5b

    .line 1442
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1443
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1d
    if-ltz v1, :cond_38

    .line 1444
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1445
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1446
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_35

    .line 1447
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1443
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1450
    .end local v1    # "i":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_40
    if-ltz v1, :cond_5b

    .line 1451
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1452
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1453
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_58

    .line 1454
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1450
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 1458
    .end local v1    # "i":I
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1459
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1460
    return-void

    .line 1459
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public systemReady()V
    .registers 13

    .line 650
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0}, Lcom/android/server/AppOpsServiceState;->systemReady()V

    .line 651
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 653
    monitor-enter p0

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "changed":Z
    :try_start_12
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_b0

    .line 656
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 658
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 660
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 661
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 662
    const/4 v0, 0x1

    .line 663
    goto/16 :goto_ac

    .line 666
    :cond_3b
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 667
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v4, :cond_40

    .line 668
    goto :goto_ac

    .line 671
    :cond_40
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 672
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 673
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_d7

    .line 674
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v7, -0x1

    .line 676
    .local v7, "curUid":I
    :try_start_55
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 678
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 676
    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_69} :catch_6b
    .catchall {:try_start_55 .. :try_end_69} :catchall_d7

    move v7, v8

    .line 680
    goto :goto_6c

    .line 679
    :catch_6b
    move-exception v8

    .line 681
    :goto_6c
    :try_start_6c
    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_a0

    .line 682
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 685
    const/4 v0, 0x1

    .line 687
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "curUid":I
    :cond_a0
    goto :goto_48

    .line 689
    :cond_a1
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 690
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 655
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_ac
    :goto_ac
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1a

    .line 693
    .end local v1    # "i":I
    :cond_b0
    if-eqz v0, :cond_b5

    .line 694
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 696
    .end local v0    # "changed":Z
    :cond_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_6c .. :try_end_b6} :catchall_d7

    .line 698
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 700
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 717
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    .line 719
    .local v1, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v2, Lcom/android/server/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 744
    return-void

    .line 696
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 803
    monitor-enter p0

    .line 804
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 805
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 806
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 808
    :cond_11
    monitor-exit p0

    .line 809
    return-void

    .line 808
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public updateUidProcState(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 812
    monitor-enter p0

    .line 813
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 814
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    sget-object v2, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v2, v2, p2

    .line 815
    .local v2, "newState":I
    if-eqz v1, :cond_7d

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v3, v2, :cond_7d

    .line 816
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 817
    .local v3, "oldPendingState":I
    iput v2, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 818
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-lt v2, v4, :cond_42

    const/4 v4, 0x2

    if-gt v2, v4, :cond_1c

    goto :goto_42

    .line 822
    :cond_1c
    iget-wide v5, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_45

    .line 826
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v0, :cond_2d

    .line 827
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v4, "settleTime":J
    :goto_2c
    goto :goto_3a

    .line 828
    .end local v4    # "settleTime":J
    :cond_2d
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v4, :cond_36

    .line 829
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_2c

    .line 831
    :cond_36
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 833
    .restart local v4    # "settleTime":J
    :goto_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .end local v4    # "settleTime":J
    goto :goto_45

    .line 821
    :cond_42
    :goto_42
    invoke-direct {p0, v1}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 835
    :cond_45
    :goto_45
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v4, :cond_7d

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 839
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_54
    if-ltz v6, :cond_7d

    .line 840
    iget-object v7, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 841
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    sub-int/2addr v8, v0

    .local v8, "j":I
    :goto_63
    if-ltz v8, :cond_7a

    .line 842
    invoke-virtual {v7, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 843
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lez v10, :cond_77

    .line 844
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v3

    .line 845
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v2

    .line 841
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_77
    add-int/lit8 v8, v8, -0x1

    goto :goto_63

    .line 839
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "j":I
    :cond_7a
    add-int/lit8 v6, v6, -0x1

    goto :goto_54

    .line 851
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "newState":I
    .end local v3    # "oldPendingState":I
    .end local v4    # "now":J
    .end local v6    # "i":I
    :cond_7d
    monitor-exit p0

    .line 852
    return-void

    .line 851
    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_2 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method writeState()V
    .registers 27

    .line 2513
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 2516
    :try_start_5
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_255
    .catchall {:try_start_5 .. :try_end_b} :catchall_253

    move-object v3, v0

    .line 2520
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 2519
    nop

    .line 2522
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {v1, v0}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_253

    .line 2525
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_13
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2526
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2527
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2528
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2531
    monitor-enter p0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_39} :catch_242
    .catchall {:try_start_13 .. :try_end_39} :catchall_253

    .line 2532
    :try_start_39
    iget-object v6, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_239

    .line 2533
    .local v6, "uidStateCount":I
    const/4 v8, 0x0

    .line 2533
    .local v8, "i":I
    :goto_40
    if-ge v8, v6, :cond_aa

    .line 2534
    :try_start_42
    iget-object v9, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 2535
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_a2

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_a2

    .line 2536
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2537
    const-string/jumbo v10, "n"

    iget v11, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2538
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2539
    .local v10, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 2540
    .local v11, "opCount":I
    const/4 v12, 0x0

    .line 2540
    .local v12, "j":I
    :goto_6f
    if-ge v12, v11, :cond_9c

    .line 2541
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2542
    .local v13, "op":I
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2543
    .local v14, "mode":I
    const-string/jumbo v15, "op"

    invoke-interface {v5, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    const-string/jumbo v15, "n"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    const-string/jumbo v7, "m"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2546
    const-string/jumbo v7, "op"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    .end local v13    # "op":I
    .end local v14    # "mode":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    .line 2548
    .end local v12    # "j":I
    :cond_9c
    const-string/jumbo v7, "uid"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a2
    .catchall {:try_start_42 .. :try_end_a2} :catchall_a5

    .line 2533
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v10    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v11    # "opCount":I
    :cond_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 2551
    .end local v6    # "uidStateCount":I
    .end local v8    # "i":I
    :catchall_a5
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_23c

    :cond_aa
    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_239

    .line 2553
    if-eqz v4, :cond_228

    .line 2554
    const/4 v6, 0x0

    .line 2555
    .local v6, "lastPkg":Ljava/lang/String;
    move-object v7, v6

    const/4 v6, 0x0

    .line 2555
    .local v6, "i":I
    .local v7, "lastPkg":Ljava/lang/String;
    :goto_b0
    :try_start_b0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_21c

    .line 2556
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 2557
    .local v8, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c4} :catch_242
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_253

    if-nez v9, :cond_e5

    .line 2558
    if-eqz v7, :cond_d4

    .line 2559
    :try_start_c8
    const-string/jumbo v9, "pkg"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d4

    .line 2622
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "i":I
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catch_cf
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_245

    .line 2561
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "i":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d4
    :goto_d4
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 2562
    const-string/jumbo v9, "pkg"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2563
    const-string/jumbo v9, "n"

    invoke-interface {v5, v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_e5} :catch_cf
    .catchall {:try_start_c8 .. :try_end_e5} :catchall_253

    .line 2565
    :cond_e5
    :try_start_e5
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    const-string/jumbo v9, "n"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2567
    monitor-enter p0
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_fa} :catch_242
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_253

    .line 2568
    :try_start_fa
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v9, v10, v11, v11}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v9
    :try_end_107
    .catchall {:try_start_fa .. :try_end_107} :catchall_211

    .line 2572
    .local v9, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v9, :cond_120

    .line 2573
    :try_start_109
    const-string/jumbo v10, "p"

    iget-boolean v11, v9, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_115
    .catchall {:try_start_109 .. :try_end_115} :catchall_117

    .line 2577
    const/4 v11, 0x0

    goto :goto_12b

    .line 2577
    .end local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_117
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    goto/16 :goto_218

    .line 2575
    .restart local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_120
    :try_start_120
    const-string/jumbo v10, "p"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2577
    .end local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    :goto_12b
    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_120 .. :try_end_12c} :catchall_211

    .line 2578
    :try_start_12c
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    .line 2579
    .local v9, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v10, v11

    .line 2579
    .local v10, "j":I
    :goto_131
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_1fb

    .line 2580
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 2581
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v13, "op"

    invoke-interface {v5, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2582
    const-string/jumbo v13, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2583
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_15d} :catch_242
    .catchall {:try_start_12c .. :try_end_15d} :catchall_253

    if-eq v13, v14, :cond_16d

    .line 2584
    :try_start_15f
    const-string/jumbo v13, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_16d} :catch_cf
    .catchall {:try_start_15f .. :try_end_16d} :catchall_253

    .line 2586
    :cond_16d
    move v13, v11

    .line 2586
    .local v13, "k":I
    :goto_16e
    const/4 v14, 0x6

    if-ge v13, v14, :cond_1b3

    .line 2587
    :try_start_171
    invoke-virtual {v12, v13}, Landroid/app/AppOpsManager$OpEntry;->getLastTimeFor(I)J

    move-result-wide v14

    .line 2588
    .local v14, "time":J
    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-eqz v18, :cond_18a

    .line 2589
    sget-object v18, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    aget-object v11, v18, v13

    .line 2590
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_183} :catch_242
    .catchall {:try_start_171 .. :try_end_183} :catchall_253

    .line 2589
    move-object/from16 v19, v4

    const/4 v4, 0x0

    :try_start_186
    invoke-interface {v5, v4, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2589
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v19, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_18c

    .line 2592
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_18a
    move-object/from16 v19, v4

    .line 2592
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_18c
    invoke-virtual {v12, v13}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTimeFor(I)J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 2593
    .local v22, "rejectTime":J
    move-object/from16 v25, v7

    move-object/from16 v24, v8

    move-wide/from16 v7, v22

    cmp-long v0, v7, v16

    .line 2593
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v22    # "rejectTime":J
    .local v7, "rejectTime":J
    .local v24, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v25, "lastPkg":Ljava/lang/String;
    if-eqz v0, :cond_1a8

    .line 2594
    sget-object v0, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    aget-object v0, v0, v13

    .line 2595
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2594
    const/4 v11, 0x0

    invoke-interface {v5, v11, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    .end local v7    # "rejectTime":J
    .end local v14    # "time":J
    :cond_1a8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_16e

    .line 2598
    .end local v13    # "k":I
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "lastPkg":Ljava/lang/String;
    .restart local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_1b3
    move-object/from16 v19, v4

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    .line 2598
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "lastPkg":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v0

    .line 2599
    .local v0, "dur":I
    if-eqz v0, :cond_1c9

    .line 2600
    const-string v4, "d"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2602
    :cond_1c9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v4

    .line 2603
    .local v4, "proxyUid":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1db

    .line 2604
    const-string/jumbo v7, "pu"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v5, v11, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2606
    :cond_1db
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2607
    .local v7, "proxyPackageName":Ljava/lang/String;
    if-eqz v7, :cond_1e8

    .line 2608
    const-string/jumbo v8, "pp"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2610
    :cond_1e8
    const-string/jumbo v8, "op"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    .end local v0    # "dur":I
    .end local v4    # "proxyUid":I
    .end local v7    # "proxyPackageName":Ljava/lang/String;
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v19

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto/16 :goto_131

    .line 2612
    .end local v10    # "j":I
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "lastPkg":Ljava/lang/String;
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "lastPkg":Ljava/lang/String;
    .restart local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_1fb
    move-object/from16 v19, v4

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    .line 2612
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "lastPkg":Ljava/lang/String;
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_208} :catch_23e
    .catchall {:try_start_186 .. :try_end_208} :catchall_253

    .line 2555
    .end local v9    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v19

    move-object/from16 v7, v25

    const/4 v0, 0x0

    goto/16 :goto_b0

    .line 2577
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v25    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catchall_211
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    .line 2577
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "lastPkg":Ljava/lang/String;
    :goto_218
    :try_start_218
    monitor-exit p0
    :try_end_219
    .catchall {:try_start_218 .. :try_end_219} :catchall_21a

    :try_start_219
    throw v0

    :catchall_21a
    move-exception v0

    goto :goto_218

    .line 2614
    .end local v6    # "i":I
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v24    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_21c
    move-object/from16 v19, v4

    .line 2614
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_22a

    .line 2615
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2615
    .end local v7    # "lastPkg":Ljava/lang/String;
    goto :goto_22a

    .line 2619
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_228
    move-object/from16 v19, v4

    .line 2619
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_22a
    :goto_22a
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2620
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2621
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_238} :catch_23e
    .catchall {:try_start_219 .. :try_end_238} :catchall_253

    .line 2625
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_251

    .line 2551
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_239
    move-exception v0

    move-object/from16 v19, v4

    .line 2551
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_23c
    :try_start_23c
    monitor-exit p0
    :try_end_23d
    .catchall {:try_start_23c .. :try_end_23d} :catchall_240

    :try_start_23d
    throw v0
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_23e} :catch_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_253

    .line 2622
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_23e
    move-exception v0

    goto :goto_245

    .line 2551
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_240
    move-exception v0

    goto :goto_23c

    .line 2622
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_242
    move-exception v0

    move-object/from16 v19, v4

    .line 2623
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_245
    :try_start_245
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2624
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2626
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_251
    monitor-exit v2

    .line 2627
    return-void

    .line 2626
    :catchall_253
    move-exception v0

    goto :goto_26e

    .line 2517
    :catch_255
    move-exception v0

    .line 2518
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    monitor-exit v2

    return-void

    .line 2626
    .end local v0    # "e":Ljava/io/IOException;
    :goto_26e
    monitor-exit v2
    :try_end_26f
    .catchall {:try_start_245 .. :try_end_26f} :catchall_253

    throw v0
.end method
