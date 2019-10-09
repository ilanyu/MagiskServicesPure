.class Lcom/android/server/am/StartProviderInfo;
.super Ljava/lang/Object;
.source "MiuiContentProviderControl.java"


# instance fields
.field mCaller:Landroid/app/IApplicationThread;

.field mCallerPid:I

.field mCallerPkg:Ljava/lang/String;

.field mCallerThreadId:J

.field mCallingIdentity:J

.field mDelay:J

.field mName:Ljava/lang/String;

.field mStable:Z

.field mToken:Landroid/os/IBinder;

.field mUserId:I


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJ)V
    .registers 26
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callingIdentity"    # J
    .param p6, "callerPid"    # I
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "stable"    # Z
    .param p9, "userId"    # I
    .param p10, "callerThreadId"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v12, 0x96

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/StartProviderInfo;->reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V

    .line 45
    return-void
.end method


# virtual methods
.method public reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V
    .registers 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callingIdentity"    # J
    .param p6, "callerPid"    # I
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "stable"    # Z
    .param p9, "userId"    # I
    .param p10, "callerThreadId"    # J
    .param p12, "delay"    # J

    .line 50
    iput-object p1, p0, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 51
    iput-object p3, p0, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    .line 52
    iput-wide p4, p0, Lcom/android/server/am/StartProviderInfo;->mCallingIdentity:J

    .line 53
    iput p6, p0, Lcom/android/server/am/StartProviderInfo;->mCallerPid:I

    .line 54
    iput-object p2, p0, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/android/server/am/StartProviderInfo;->mToken:Landroid/os/IBinder;

    .line 56
    iput-boolean p8, p0, Lcom/android/server/am/StartProviderInfo;->mStable:Z

    .line 57
    iput p9, p0, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    .line 58
    iput-wide p10, p0, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    .line 59
    iput-wide p12, p0, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    .line 60
    return-void
.end method
