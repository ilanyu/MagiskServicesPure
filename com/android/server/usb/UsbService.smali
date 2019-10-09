.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 130
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 131
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 132
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 134
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 136
    new-instance v1, Lcom/android/server/usb/UsbHostManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 138
    :cond_3d
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 139
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 141
    :cond_55
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_64

    .line 142
    :cond_5d
    new-instance v1, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 145
    :cond_64
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 147
    new-instance v1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 160
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v2, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 162
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 62
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 3
    .param p1, "userIdInt"    # I

    .line 124
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private isCallerInCurrentUserProfileGroupLocked()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 241
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 243
    .local v0, "userIdInt":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v1

    .line 245
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 247
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 245
    return v3

    .line 247
    :catchall_14
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "stoppedUser"    # Landroid/os/UserHandle;

    .line 195
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 196
    return-void
.end method

.method private onSwitchUser(I)V
    .registers 5
    .param p1, "newUserId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 178
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 179
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 180
    .local v1, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_18

    .line 181
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 183
    :cond_18
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_21

    .line 184
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 186
    .end local v1    # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :cond_21
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 747
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 442
    return-void
.end method

.method public bootCompleted()V
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 216
    :cond_9
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 389
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 394
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 395
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    .line 454
    return-void
.end method

.method public denyUsbDebugging()V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    .line 448
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 514
    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "UsbService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 516
    :cond_11
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v0, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v4, v0

    .line 517
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v14, v5

    .line 519
    .local v14, "ident":J
    :try_start_1e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 520
    .local v0, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 522
    const/4 v5, 0x0

    .line 523
    .local v5, "dumpAsProto":Z
    const-string v6, "--proto"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_577

    if-eqz v6, :cond_30

    .line 524
    const/4 v5, 0x1

    .line 527
    .end local v5    # "dumpAsProto":Z
    .local v16, "dumpAsProto":Z
    :cond_30
    move/from16 v16, v5

    if-eqz v3, :cond_4fb

    :try_start_34
    array-length v5, v3

    if-eqz v5, :cond_4fb

    const/4 v5, 0x0

    aget-object v6, v3, v5

    const-string v7, "-a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4fb

    if-eqz v16, :cond_47

    .line 529
    move-wide v10, v14

    goto/16 :goto_4fc

    .line 551
    :cond_47
    const-string/jumbo v6, "set-port-roles"

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_4f5

    const v10, -0x4f94e1aa

    const v11, -0x356f97e5    # -4731917.5f

    const/4 v12, 0x4

    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    const/4 v13, 0x2

    const/4 v5, 0x1

    if-eqz v6, :cond_13c

    :try_start_5e
    array-length v6, v3

    if-ne v6, v12, :cond_13c

    .line 552
    aget-object v6, v3, v5

    .line 554
    .local v6, "portId":Ljava/lang/String;
    aget-object v12, v3, v13

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-eq v5, v11, :cond_8c

    const v11, -0x1a426a07

    if-eq v5, v11, :cond_81

    const v11, 0x35de93

    if-eq v5, v11, :cond_76

    goto :goto_97

    :cond_76
    const-string/jumbo v5, "sink"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    const/4 v5, 0x1

    goto :goto_98

    :cond_81
    const-string/jumbo v5, "no-power"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    move v5, v13

    goto :goto_98

    :cond_8c
    const-string/jumbo v5, "source"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    const/4 v5, 0x0

    goto :goto_98

    :cond_97
    :goto_97
    const/4 v5, -0x1

    :goto_98
    packed-switch v5, :pswitch_data_580

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    goto/16 :goto_11e

    .line 562
    :pswitch_9f
    const/4 v5, 0x0

    .line 563
    .local v5, "powerRole":I
    goto :goto_a5

    .line 559
    .end local v5    # "powerRole":I
    :pswitch_a1
    const/4 v5, 0x2

    .line 560
    .restart local v5    # "powerRole":I
    goto :goto_a5

    .line 556
    .end local v5    # "powerRole":I
    :pswitch_a3
    const/4 v5, 0x1

    .line 557
    .restart local v5    # "powerRole":I
    nop

    .line 566
    :goto_a5
    nop

    .line 569
    aget-object v11, v3, v7

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v10, :cond_cd

    const v10, 0x30f5a8

    if-eq v12, v10, :cond_c3

    const v10, 0x7b007436

    if-eq v12, v10, :cond_b9

    goto :goto_d7

    :cond_b9
    const-string/jumbo v10, "no-data"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    goto :goto_d8

    :cond_c3
    const-string v10, "host"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    const/4 v13, 0x0

    goto :goto_d8

    :cond_cd
    const-string v10, "device"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    const/4 v13, 0x1

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v13, -0x1

    :goto_d8
    packed-switch v13, :pswitch_data_58a

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    goto :goto_106

    .line 577
    :pswitch_de
    const/4 v7, 0x0

    .line 578
    .local v7, "dataRole":I
    goto :goto_e4

    .line 574
    .end local v7    # "dataRole":I
    :pswitch_e0
    const/4 v7, 0x2

    .line 575
    .restart local v7    # "dataRole":I
    goto :goto_e4

    .line 571
    .end local v7    # "dataRole":I
    :pswitch_e2
    const/4 v7, 0x1

    .line 572
    .restart local v7    # "dataRole":I
    nop

    .line 581
    :goto_e4
    nop

    .line 583
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v10, :cond_104

    .line 584
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v10, v6, v5, v7, v4}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 590
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 591
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v11, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v12, v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 594
    .end local v5    # "powerRole":I
    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "dataRole":I
    :cond_104
    goto/16 :goto_1c8

    .line 580
    .restart local v5    # "powerRole":I
    .restart local v6    # "portId":Ljava/lang/String;
    :goto_106
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid data role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_5e .. :try_end_11a} :catchall_136

    .line 742
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    return-void

    .line 565
    .end local v5    # "powerRole":I
    :goto_11e
    :try_start_11e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid power role: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_132
    .catchall {:try_start_11e .. :try_end_132} :catchall_136

    .line 742
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    return-void

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "portId":Ljava/lang/String;
    .end local v16    # "dumpAsProto":Z
    :catchall_136
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    goto/16 :goto_57b

    .line 594
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_13c
    :try_start_13c
    const-string v5, "add-port"

    const/4 v6, 0x0

    aget-object v10, v3, v6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_145
    .catchall {:try_start_13c .. :try_end_145} :catchall_4f5

    const v10, 0x1c3ff

    const v6, 0x1842e

    if-eqz v5, :cond_1e5

    :try_start_14d
    array-length v5, v3

    if-ne v5, v7, :cond_1e5

    .line 595
    const/4 v5, 0x1

    aget-object v11, v3, v5

    move-object v5, v11

    .line 597
    .local v5, "portId":Ljava/lang/String;
    aget-object v11, v3, v13

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v6, :cond_18c

    if-eq v12, v10, :cond_180

    const v6, 0x2f387c

    if-eq v12, v6, :cond_175

    const v6, 0x33af38

    if-eq v12, v6, :cond_169

    goto :goto_197

    :cond_169
    const-string/jumbo v6, "none"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    move/from16 v18, v7

    goto :goto_199

    :cond_175
    const-string v6, "dual"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    move/from16 v18, v13

    goto :goto_199

    :cond_180
    const-string/jumbo v6, "ufp"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    const/16 v18, 0x0

    goto :goto_199

    :cond_18c
    const-string v6, "dfp"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    const/16 v18, 0x1

    goto :goto_199

    :cond_197
    :goto_197
    const/16 v18, -0x1

    :goto_199
    packed-switch v18, :pswitch_data_594

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    goto :goto_1cd

    .line 608
    :pswitch_19f
    const/4 v6, 0x0

    .line 609
    .local v6, "supportedModes":I
    goto :goto_1a7

    .line 605
    .end local v6    # "supportedModes":I
    :pswitch_1a1
    const/4 v6, 0x3

    .line 606
    .restart local v6    # "supportedModes":I
    goto :goto_1a7

    .line 602
    .end local v6    # "supportedModes":I
    :pswitch_1a3
    const/4 v6, 0x2

    .line 603
    .restart local v6    # "supportedModes":I
    goto :goto_1a7

    .line 599
    .end local v6    # "supportedModes":I
    :pswitch_1a5
    const/4 v6, 0x1

    .line 600
    .restart local v6    # "supportedModes":I
    nop

    .line 612
    :goto_1a7
    nop

    .line 614
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_1c7

    .line 615
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 616
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 617
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v11, v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 620
    .end local v5    # "portId":Ljava/lang/String;
    .end local v6    # "supportedModes":I
    :cond_1c7
    nop

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "ident":J
    .end local v16    # "dumpAsProto":Z
    .local v10, "ident":J
    :goto_1c8
    move-object/from16 v7, p1

    move-wide v10, v14

    goto/16 :goto_570

    .line 611
    .end local v10    # "ident":J
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "portId":Ljava/lang/String;
    .restart local v14    # "ident":J
    .restart local v16    # "dumpAsProto":Z
    :goto_1cd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e1
    .catchall {:try_start_14d .. :try_end_1e1} :catchall_136

    .line 742
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    return-void

    .line 620
    .end local v5    # "portId":Ljava/lang/String;
    :cond_1e5
    :try_start_1e5
    const-string v5, "connect-port"

    const/16 v19, 0x0

    aget-object v6, v3, v19

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35e

    array-length v5, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_35e

    .line 621
    const/4 v5, 0x1

    aget-object v6, v3, v5

    const v5, 0x1842e

    .line 623
    .local v6, "portId":Ljava/lang/String;
    aget-object v7, v3, v13

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_203
    .catchall {:try_start_1e5 .. :try_end_203} :catchall_4f5

    move/from16 v20, v7

    .line 624
    .local v20, "canChangeMode":Z
    if-eqz v20, :cond_20e

    :try_start_207
    aget-object v7, v3, v13

    invoke-static {v7}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_20d
    .catchall {:try_start_207 .. :try_end_20d} :catchall_136

    goto :goto_210

    :cond_20e
    :try_start_20e
    aget-object v7, v3, v13

    :goto_210
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_214
    .catchall {:try_start_20e .. :try_end_214} :catchall_4f5

    if-eq v8, v5, :cond_224

    if-eq v8, v10, :cond_219

    goto :goto_22e

    :cond_219
    :try_start_219
    const-string/jumbo v5, "ufp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_220
    .catchall {:try_start_219 .. :try_end_220} :catchall_136

    if-eqz v5, :cond_22e

    const/4 v5, 0x0

    goto :goto_22f

    :cond_224
    :try_start_224
    const-string v5, "dfp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_22a
    .catchall {:try_start_224 .. :try_end_22a} :catchall_4f5

    if-eqz v5, :cond_22e

    const/4 v5, 0x1

    goto :goto_22f

    :cond_22e
    :goto_22e
    const/4 v5, -0x1

    :goto_22f
    packed-switch v5, :pswitch_data_5a0

    .line 632
    move-wide v10, v14

    .line 632
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_233
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_235
    .catchall {:try_start_233 .. :try_end_235} :catchall_50b

    goto/16 :goto_346

    .line 629
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_237
    const/4 v5, 0x2

    .line 630
    .local v5, "mode":I
    goto :goto_23b

    .line 626
    .end local v5    # "mode":I
    :pswitch_239
    const/4 v5, 0x1

    .line 627
    .restart local v5    # "mode":I
    nop

    .line 633
    .end local v5    # "mode":I
    .local v7, "mode":I
    :goto_23b
    move v7, v5

    const/4 v5, 0x3

    .line 636
    :try_start_23d
    aget-object v8, v3, v5

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_245
    .catchall {:try_start_23d .. :try_end_245} :catchall_4f5

    move/from16 v21, v8

    .line 637
    .local v21, "canChangePowerRole":Z
    if-eqz v21, :cond_250

    :try_start_249
    aget-object v8, v3, v5

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_24f
    .catchall {:try_start_249 .. :try_end_24f} :catchall_136

    goto :goto_252

    :cond_250
    :try_start_250
    aget-object v8, v3, v5

    :goto_252
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_256
    .catchall {:try_start_250 .. :try_end_256} :catchall_4f5

    if-eq v9, v11, :cond_269

    const v10, 0x35de93

    if-eq v9, v10, :cond_25e

    goto :goto_274

    :cond_25e
    :try_start_25e
    const-string/jumbo v9, "sink"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_265
    .catchall {:try_start_25e .. :try_end_265} :catchall_136

    if-eqz v8, :cond_274

    const/4 v8, 0x1

    goto :goto_275

    :cond_269
    :try_start_269
    const-string/jumbo v9, "source"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_270
    .catchall {:try_start_269 .. :try_end_270} :catchall_4f5

    if-eqz v8, :cond_274

    const/4 v8, 0x0

    goto :goto_275

    :cond_274
    :goto_274
    const/4 v8, -0x1

    :goto_275
    packed-switch v8, :pswitch_data_5a8

    .line 645
    move-wide v10, v14

    .line 645
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_279
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_27b
    .catchall {:try_start_279 .. :try_end_27b} :catchall_50b

    goto/16 :goto_32e

    .line 642
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_27d
    const/4 v5, 0x2

    .line 643
    .local v5, "powerRole":I
    goto :goto_281

    .line 639
    .end local v5    # "powerRole":I
    :pswitch_27f
    const/4 v5, 0x1

    .line 640
    .restart local v5    # "powerRole":I
    nop

    .line 646
    .end local v5    # "powerRole":I
    .local v9, "powerRole":I
    :goto_281
    move v9, v5

    const-wide/16 v10, 0x0

    .line 649
    :try_start_284
    aget-object v5, v3, v12

    const-string v8, "?"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_28c
    .catchall {:try_start_284 .. :try_end_28c} :catchall_4f5

    move/from16 v17, v5

    .line 650
    .local v17, "canChangeDataRole":Z
    if-eqz v17, :cond_297

    :try_start_290
    aget-object v5, v3, v12

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_296
    .catchall {:try_start_290 .. :try_end_296} :catchall_136

    goto :goto_299

    :cond_297
    :try_start_297
    aget-object v5, v3, v12

    :goto_299
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_29d
    .catchall {:try_start_297 .. :try_end_29d} :catchall_4f5

    const v13, -0x4f94e1aa

    if-eq v8, v13, :cond_2b3

    const v13, 0x30f5a8

    if-eq v8, v13, :cond_2a8

    goto :goto_2be

    :cond_2a8
    :try_start_2a8
    const-string v8, "host"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2ae
    .catchall {:try_start_2a8 .. :try_end_2ae} :catchall_136

    if-eqz v5, :cond_2be

    const/16 v18, 0x0

    goto :goto_2c0

    :cond_2b3
    :try_start_2b3
    const-string v8, "device"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2b9
    .catchall {:try_start_2b3 .. :try_end_2b9} :catchall_4f5

    if-eqz v5, :cond_2be

    const/16 v18, 0x1

    goto :goto_2c0

    :cond_2be
    :goto_2be
    const/16 v18, -0x1

    :goto_2c0
    packed-switch v18, :pswitch_data_5b0

    .line 658
    move-wide/from16 v22, v14

    .line 658
    .end local v14    # "ident":J
    .local v22, "ident":J
    :try_start_2c5
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_2c7
    .catchall {:try_start_2c5 .. :try_end_2c7} :catchall_327

    goto :goto_30d

    .line 655
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_2c8
    const/4 v5, 0x2

    .line 656
    .local v5, "dataRole":I
    goto :goto_2cc

    .line 652
    .end local v5    # "dataRole":I
    :pswitch_2ca
    const/4 v5, 0x1

    .line 653
    .restart local v5    # "dataRole":I
    nop

    .line 659
    :goto_2cc
    move-wide v12, v10

    move v11, v5

    .line 661
    .end local v5    # "dataRole":I
    .local v11, "dataRole":I
    :try_start_2ce
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_2ff

    .line 662
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_2d4
    .catchall {:try_start_2ce .. :try_end_2d4} :catchall_307

    move/from16 v8, v20

    move/from16 v10, v21

    move-wide/from16 v22, v14

    move-wide v14, v12

    move/from16 v12, v17

    .line 662
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    move-object v13, v4

    :try_start_2de
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 664
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 665
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v10, v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v10, ""

    invoke-virtual {v5, v8, v10, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_2f7
    .catchall {:try_start_2de .. :try_end_2f7} :catchall_2f8

    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v9    # "powerRole":I
    .end local v11    # "dataRole":I
    .end local v17    # "canChangeDataRole":Z
    .end local v20    # "canChangeMode":Z
    .end local v21    # "canChangePowerRole":Z
    goto :goto_301

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :catchall_2f8
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v10, v22

    goto/16 :goto_57b

    .line 668
    .end local v22    # "ident":J
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "ident":J
    .restart local v16    # "dumpAsProto":Z
    :cond_2ff
    move-wide/from16 v22, v14

    .line 742
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    :goto_301
    move-object/from16 v7, p1

    move-wide/from16 v10, v22

    goto/16 :goto_570

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :catchall_307
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    .line 742
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    goto/16 :goto_57b

    .line 658
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "portId":Ljava/lang/String;
    .restart local v7    # "mode":I
    .restart local v9    # "powerRole":I
    .restart local v16    # "dumpAsProto":Z
    .restart local v17    # "canChangeDataRole":Z
    .restart local v20    # "canChangeMode":Z
    .restart local v21    # "canChangePowerRole":Z
    :goto_30d
    :try_start_30d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data role: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_321
    .catchall {:try_start_30d .. :try_end_321} :catchall_327

    .line 742
    move-wide/from16 v10, v22

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    .end local v22    # "ident":J
    .restart local v10    # "ident":J
    return-void

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v9    # "powerRole":I
    .end local v10    # "ident":J
    .end local v16    # "dumpAsProto":Z
    .end local v17    # "canChangeDataRole":Z
    .end local v20    # "canChangeMode":Z
    .end local v21    # "canChangePowerRole":Z
    .restart local v22    # "ident":J
    :catchall_327
    move-exception v0

    move-wide/from16 v10, v22

    move-object/from16 v7, p1

    .line 742
    .end local v22    # "ident":J
    .restart local v10    # "ident":J
    goto/16 :goto_57b

    .line 645
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "portId":Ljava/lang/String;
    .restart local v7    # "mode":I
    .restart local v16    # "dumpAsProto":Z
    .restart local v20    # "canChangeMode":Z
    .restart local v21    # "canChangePowerRole":Z
    :goto_32e
    :try_start_32e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid power role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_342
    .catchall {:try_start_32e .. :try_end_342} :catchall_50b

    .line 742
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    return-void

    .line 632
    .end local v7    # "mode":I
    .end local v21    # "canChangePowerRole":Z
    :goto_346
    :try_start_346
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_35a
    .catchall {:try_start_346 .. :try_end_35a} :catchall_50b

    .line 742
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    return-void

    .line 668
    .end local v6    # "portId":Ljava/lang/String;
    .end local v10    # "ident":J
    .end local v20    # "canChangeMode":Z
    .restart local v14    # "ident":J
    :cond_35e
    move-wide v10, v14

    move-wide v14, v8

    .line 668
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_360
    const-string v5, "disconnect-port"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_395

    array-length v5, v3

    if-ne v5, v13, :cond_395

    .line 669
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 670
    .local v5, "portId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_390

    .line 671
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 672
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 673
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 676
    .end local v5    # "portId":Ljava/lang/String;
    :cond_390
    nop

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :cond_391
    :goto_391
    move-object/from16 v7, p1

    goto/16 :goto_570

    .line 676
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_395
    const-string/jumbo v5, "remove-port"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c7

    array-length v5, v3

    if-ne v5, v13, :cond_3c7

    .line 677
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 678
    .restart local v5    # "portId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_3c6

    .line 679
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 680
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 681
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 684
    .end local v5    # "portId":Ljava/lang/String;
    :cond_3c6
    goto :goto_391

    :cond_3c7
    const-string/jumbo v5, "reset"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f7

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f7

    .line 685
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_391

    .line 686
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5, v4}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 687
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 688
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v6, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v7, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_391

    .line 691
    :cond_3f7
    const-string/jumbo v5, "ports"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_420

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_420

    .line 692
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_391

    .line 693
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v6, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v7, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_391

    .line 696
    :cond_420
    const-string v5, "dump-descriptors"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_432

    .line 697
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_391

    .line 699
    :cond_432
    const-string v5, "Dump current USB state or issue command:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 700
    const-string v5, "  ports"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 701
    const-string v5, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 702
    const-string v5, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 703
    const-string v5, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const-string v5, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const-string v5, "  disconnect-port <id>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    const-string v5, "  remove-port <id>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 707
    const-string v5, "  reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 709
    const-string v5, "Example USB type C port role switch:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v5, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 712
    const-string v5, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string v5, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    const-string v5, "  dumpsys usb ports"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const-string v5, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const-string v5, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 720
    const-string v5, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const-string v5, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 725
    const-string v5, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 726
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 727
    const-string v5, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 730
    const-string v5, "Example USB device-only port:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const-string v5, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 732
    const-string v5, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 733
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 735
    const-string v5, "Example USB device descriptors:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 736
    const-string v5, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v5, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v5, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v5, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    goto/16 :goto_391

    .line 742
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :catchall_4f5
    move-exception v0

    move-wide v10, v14

    move-object/from16 v7, p1

    goto/16 :goto_57b

    .line 529
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_4fb
    move-wide v10, v14

    .line 529
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :goto_4fc
    if-eqz v16, :cond_50f

    .line 530
    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;
    :try_end_502
    .catchall {:try_start_360 .. :try_end_502} :catchall_50b

    move-object/from16 v7, p1

    :try_start_504
    invoke-direct {v6, v7}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 530
    .local v5, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_522

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local v16    # "dumpAsProto":Z
    :catchall_50b
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_57b

    .line 532
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_50f
    move-object/from16 v7, p1

    const-string v5, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v6, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 537
    .restart local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_522
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v6, :cond_532

    .line 538
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v8, "device_manager"

    const-wide v12, 0x10b00000001L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 540
    :cond_532
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v6, :cond_542

    .line 541
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v8, "host_manager"

    const-wide v12, 0x10b00000002L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 543
    :cond_542
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_553

    .line 544
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v8, "port_manager"

    const-wide v12, 0x10b00000003L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 546
    :cond_553
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v8, "alsa_manager"

    const-wide v12, 0x10b00000004L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 548
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v8, "settings_manager"

    const-wide v12, 0x10b00000005L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 550
    invoke-virtual {v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_56f
    .catchall {:try_start_504 .. :try_end_56f} :catchall_575

    .line 551
    .end local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 742
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :goto_570
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    nop

    .line 744
    return-void

    .line 742
    :catchall_575
    move-exception v0

    goto :goto_57b

    .line 742
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :catchall_577
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    .line 742
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :goto_57b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    :pswitch_data_580
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_a1
        :pswitch_9f
    .end packed-switch

    :pswitch_data_58a
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_e0
        :pswitch_de
    .end packed-switch

    :pswitch_data_594
    .packed-switch 0x0
        :pswitch_1a5
        :pswitch_1a3
        :pswitch_1a1
        :pswitch_19f
    .end packed-switch

    :pswitch_data_5a0
    .packed-switch 0x0
        :pswitch_239
        :pswitch_237
    .end packed-switch

    :pswitch_data_5a8
    .packed-switch 0x0
        :pswitch_27f
        :pswitch_27d
    .end packed-switch

    :pswitch_data_5b0
    .packed-switch 0x0
        :pswitch_2ca
        :pswitch_2c8
    .end packed-switch
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "function"    # J

    .line 310
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 282
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "devices"    # Landroid/os/Bundle;

    .line 228
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 231
    :cond_9
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 6
    .param p1, "portId"    # Ljava/lang/String;

    .line 470
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    .local v0, "ident":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    nop

    .line 477
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    return-object v2

    .line 477
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    .local v0, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_17

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    nop

    .line 464
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    return-object v2

    .line 464
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getScreenUnlockedFunctions()J
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 372
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 374
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 375
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 367
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 368
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 345
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 346
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 379
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 384
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 339
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 339
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "user"    # I

    .line 220
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    .line 223
    :cond_9
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 289
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_45

    .line 290
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 292
    .local v0, "userIdInt":I
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v2

    .line 295
    .local v2, "isCurrentUser":Z
    if-eqz v2, :cond_1d

    .line 296
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 298
    :cond_1d
    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as user is not active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v2    # "isCurrentUser":Z
    monitor-exit v1

    goto :goto_45

    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_42

    throw v2

    .line 304
    .end local v0    # "userIdInt":I
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return-object v0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_4e

    .line 257
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    if-eqz p1, :cond_4a

    .line 259
    :try_start_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 260
    .local v2, "userIdInt":I
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    .line 262
    .local v3, "isCurrentUser":Z
    if-eqz v3, :cond_24

    .line 263
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v5

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 263
    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, v4

    goto :goto_4a

    .line 266
    :cond_24
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "userIdInt":I
    .end local v3    # "isCurrentUser":Z
    goto :goto_4a

    .line 270
    :catchall_48
    move-exception v2

    goto :goto_4c

    :cond_4a
    :goto_4a
    monitor-exit v1

    goto :goto_4e

    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_48

    throw v2

    .line 273
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 360
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 361
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 351
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 352
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 352
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 354
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 327
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 329
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 332
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 334
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z

    .line 407
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 408
    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 6
    .param p1, "functions"    # J

    .line 399
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 403
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 316
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 318
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 321
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 323
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 8
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .line 483
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 485
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 489
    .local v0, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1e

    .line 490
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 493
    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    nop

    .line 495
    return-void

    .line 493
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6
    .param p1, "functions"    # J

    .line 424
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 429
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 499
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_b
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 502
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1c

    .line 503
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 509
    :cond_1c
    monitor-exit v0

    .line 510
    return-void

    .line 506
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public systemReady()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 201
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_17

    .line 205
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_20

    .line 208
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 210
    :cond_20
    return-void
.end method
