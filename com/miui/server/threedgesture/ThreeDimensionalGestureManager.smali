.class public Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
.super Ljava/lang/Object;
.source "ThreeDimensionalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;,
        Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final GESTURE_C:I = 0x3

.field private static final GESTURE_M:I = 0x1

.field private static final GESTURE_W:I = 0x2

.field private static final GESTURE_Z:I = 0x4

.field public static final MIUI_3D_GESTURE_OPEN:Ljava/lang/String; = "miui_3d_gesture_open"

.field public static final MIUI_GESTURE_C:Ljava/lang/String; = "miui_3d_gesture_c"

.field public static final MIUI_GESTURE_M:Ljava/lang/String; = "miui_3d_gesture_m"

.field public static final MIUI_GESTURE_W:Ljava/lang/String; = "miui_3d_gesture_w"

.field public static final MIUI_GESTURE_Z:Ljava/lang/String; = "miui_3d_gesture_z"

.field public static final TAG:Ljava/lang/String; = "3DGestureManager"

.field private static final THREE_DIMENSIONAL_GESTURE_SENSOR_ID:I = 0x1fa2658

.field public static final sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

.field private mForegroundPackage:Ljava/lang/String;

.field private mGestureCLaunchApp:Ljava/lang/String;

.field private mGestureEnabled:Z

.field private mGestureMLaunchApp:Ljava/lang/String;

.field private final mGestureSensor:Landroid/hardware/Sensor;

.field private mGestureSensorListener:Landroid/hardware/SensorEventListener;

.field private mGestureWLaunchApp:Ljava/lang/String;

.field private mGestureZLaunchApp:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsGestureOpen:Z

.field private mScreenOn:Z

.field private mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

.field private final mSm:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->sMonitorList:Ljava/util/ArrayList;

    .line 65
    sget-object v0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->sMonitorList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mScreenOn:Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mCurrentUserId:I

    .line 69
    new-instance v1, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;

    invoke-direct {v1, p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;-><init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V

    iput-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    .line 196
    new-instance v1, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$2;

    invoke-direct {v1, p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$2;-><init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V

    iput-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    .line 109
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    .line 110
    iput-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureEnabled:Z

    .line 111
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    .line 112
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensor:Landroid/hardware/Sensor;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;-><init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isOkToMonitorGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureCLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureCLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchFrontCamera()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intentToResolve":Landroid/content/Intent;
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2d

    .line 145
    :cond_1c
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 146
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-static {v0, v1, p1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 150
    :cond_2d
    if-eqz v2, :cond_58

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_36

    goto :goto_58

    .line 153
    :cond_36
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 154
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    return-object v3

    .line 151
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_58
    :goto_58
    const/4 v1, 0x0

    return-object v1
.end method

.method private initSettings(Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 266
    const-string/jumbo v0, "miui_3d_gesture_open"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    move v1, v3

    nop

    :cond_e
    iput-boolean v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z

    .line 268
    const-string/jumbo v0, "miui_3d_gesture_m"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;

    .line 270
    const-string/jumbo v0, "miui_3d_gesture_w"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "miui_3d_gesture_c"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureCLaunchApp:Ljava/lang/String;

    .line 274
    const-string/jumbo v0, "miui_3d_gesture_z"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private isKeyguardLocked()Z
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 190
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_12

    .line 191
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1

    .line 193
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method private isOkToMonitorGesture()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mScreenOn:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private launchApp(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 128
    iget v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mCurrentUserId:I

    invoke-static {p1, v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1f

    .line 130
    const-string v1, "3DGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 133
    :cond_1f
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private launchFrontCamera()V
    .registers 5

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    const-string v1, "ShowCameraWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "autofocus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v1, "fullScreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "showActionIcons"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    const-string v1, "android.intent.extras.SCREEN_SLIDE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    const-string v1, "3DGestureManager"

    const-string/jumbo v2, "launchFrontCamera"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    return-void
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 160
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 161
    .local v0, "service":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_17

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 165
    :cond_17
    return-object v1
.end method

.method private registerGestureSensorListener()V
    .registers 6

    .line 314
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1d

    .line 315
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 317
    const-string v0, "3DGestureManager"

    const-string/jumbo v1, "registerGestureSensorListener successed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 319
    :cond_1d
    const-string v0, "3DGestureManager"

    const-string/jumbo v1, "registerGestureSensorListener failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_25
    return-void
.end method

.method private registerGestureSettingsListener()V
    .registers 6

    .line 245
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "miui_3d_gesture_open"

    .line 247
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 246
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    const-string/jumbo v1, "miui_3d_gesture_m"

    .line 250
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 249
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 252
    const-string/jumbo v1, "miui_3d_gesture_w"

    .line 253
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 252
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 255
    const-string/jumbo v1, "miui_3d_gesture_c"

    .line 256
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 255
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    const-string/jumbo v1, "miui_3d_gesture_z"

    .line 259
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSettingsObserver:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SettingsObserver;

    .line 258
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    invoke-direct {p0, v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->initSettings(Landroid/content/ContentResolver;)V

    .line 263
    return-void
.end method

.method private unregisterGestureSensorListener()V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    .line 325
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 326
    const-string v0, "3DGestureManager"

    const-string/jumbo v1, "unregisterGestureSensorListener successed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_13
    return-void
.end method


# virtual methods
.method public enableGesture(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 210
    iget-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 211
    :cond_5
    if-eqz p1, :cond_b

    .line 212
    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->registerGestureSensorListener()V

    goto :goto_e

    .line 214
    :cond_b
    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->unregisterGestureSensorListener()V

    .line 216
    :goto_e
    iput-boolean p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureEnabled:Z

    .line 217
    return-void
.end method

.method public isGestureOpen()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mIsGestureOpen:Z

    return v0
.end method

.method public registerForegroundInfoChangeListener()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 206
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 207
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;

    invoke-direct {v2, p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;-><init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->registerForegroundInfoChangeListener()V

    .line 124
    invoke-direct {p0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->registerGestureSettingsListener()V

    .line 125
    return-void
.end method
