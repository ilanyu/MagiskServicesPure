.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "activityRecognitionHardwareIsSupported"    # Z
    .param p4, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNameResId"    # I

    move-object v0, p0

    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    move/from16 v1, p3

    iput-boolean v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    .line 51
    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 53
    new-instance v10, Lcom/android/server/location/ActivityRecognitionProxy$1;

    invoke-direct {v10, v0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    .line 61
    .local v10, "newServiceWork":Ljava/lang/Runnable;
    new-instance v12, Lcom/android/server/ServiceWatcher;

    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "com.android.location.service.ActivityRecognitionProvider"

    move-object v3, v12

    move-object v4, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v12, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .line 35
    invoke-direct {p0}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .line 35
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ActivityRecognitionProxy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    return v0
.end method

.method private bindProvider()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/ActivityRecognitionProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/ActivityRecognitionProxy$2;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 154
    const-string v0, "ActivityRecognitionProxy"

    const-string v1, "Null binder found on connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_14
    return-void
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "activityRecognitionHardwareIsSupported"    # Z
    .param p3, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    .line 85
    new-instance v8, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    .line 95
    .local v0, "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 96
    const-string v1, "ActivityRecognitionProxy"

    const-string v2, "ServiceWatcher could not start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_1e
    return-object v0
.end method
