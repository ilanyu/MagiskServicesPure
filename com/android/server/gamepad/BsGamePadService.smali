.class public Lcom/android/server/gamepad/BsGamePadService;
.super Landroid/gamepad/IBsGamePadService$Stub;
.source "BsGamePadService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BsGamePadService"

.field private static final TYPE_LOAD_KEYMAP:I = 0x0

.field private static final TYPE_UNLOAD_KEYMAP:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableAppSwitch:Z

.field private mGameControllerUid:I

.field private mHandler:Landroid/os/Handler;

.field private mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Landroid/gamepad/IBsGamePadService$Stub;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/gamepad/BsGamePadService$1;

    invoke-direct {v0, p0}, Lcom/android/server/gamepad/BsGamePadService$1;-><init>(Lcom/android/server/gamepad/BsGamePadService;)V

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/gamepad/BsGamePadService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;
    .param p1, "x1"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadService;->updateGamePadFilter(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 42
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/gamepad/BsGamePadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 42
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/gamepad/BsGamePadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/gamepad/BsGamePadService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 42
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/gamepad/BsGamePadService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 42
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mGameControllerUid:I

    return v0
.end method

.method private checkPackagePermission(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.blackshark.gamecontroller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 143
    return v2

    .line 147
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 148
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 149
    .local v3, "signByteArray":[B
    array-length v4, v3

    const/16 v5, 0x3ff

    if-eq v4, v5, :cond_26

    .line 150
    return v2

    .line 156
    :cond_26
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2a} :catch_32

    const v5, 0xbab1360

    if-ne v4, v5, :cond_31

    const/4 v2, 0x1

    nop

    :cond_31
    return v2

    .line 157
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signByteArray":[B
    :catch_32
    move-exception v1

    .line 158
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private updateGamePadFilter(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "inputFilter":Lcom/android/server/gamepad/BsGamePadInputFilter;
    if-eqz p1, :cond_11

    .line 129
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

    if-nez v1, :cond_14

    .line 130
    new-instance v1, Lcom/android/server/gamepad/BsGamePadInputFilter;

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/gamepad/BsGamePadInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

    goto :goto_14

    .line 133
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

    .line 136
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;

    .line 137
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->setBsInputFilter(Landroid/view/IInputFilter;)V

    .line 138
    return-void
.end method


# virtual methods
.method public loadKeyMap(Ljava/util/Map;ZI)V
    .registers 7
    .param p1, "mapper"    # Ljava/util/Map;
    .param p2, "isChooseMove"    # Z
    .param p3, "rotation"    # I

    .line 179
    const-string v0, "BsGamePadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mapper.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "BsGamePadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isChooseMove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadService;->checkPackagePermission(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 184
    return-void

    .line 187
    :cond_3d
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 190
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 191
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method public setAppSwitch(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 165
    const-string v0, "BsGamePadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadService;->checkPackagePermission(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 169
    return-void

    .line 172
    :cond_21
    iput-boolean p1, p0, Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mGameControllerUid:I

    .line 174
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 86
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 87
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    new-instance v0, Lcom/android/server/gamepad/BsGamePadService$2;

    invoke-direct {v0, p0}, Lcom/android/server/gamepad/BsGamePadService$2;-><init>(Lcom/android/server/gamepad/BsGamePadService;)V

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 101
    new-instance v0, Lcom/android/server/gamepad/BsGamePadService$3;

    invoke-direct {v0, p0}, Lcom/android/server/gamepad/BsGamePadService$3;-><init>(Lcom/android/server/gamepad/BsGamePadService;)V

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    const-string v1, "BsGamePadService"

    const-string v2, "BsGamePadService is ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public unloadKeyMap()V
    .registers 3

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadService;->checkPackagePermission(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 197
    return-void

    .line 200
    :cond_b
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method
