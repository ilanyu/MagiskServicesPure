.class Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameBoosterServiceDeath"
.end annotation


# instance fields
.field private mGameBoosterService:Landroid/os/IBinder;

.field private mUserState:Lcom/miui/server/SecurityManagerService$UserState;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p3, "gameBoosterService"    # Landroid/os/IBinder;

    .line 230
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    .line 232
    iput-object p3, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    .line 233
    return-void
.end method

.method static synthetic access$2100(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    .line 226
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 240
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    iput-boolean v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z

    .line 241
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 244
    goto :goto_1d

    .line 245
    :catchall_13
    move-exception v1

    goto :goto_1f

    .line 242
    :catch_15
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_16
    const-string v2, "SecurityManagerService"

    const-string v3, "GameBoosterServiceDeath"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    throw v1
.end method
