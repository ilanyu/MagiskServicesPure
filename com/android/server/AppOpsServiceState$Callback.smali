.class public final Lcom/android/server/AppOpsServiceState$Callback;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IOpsCallback;

.field volatile mUnLink:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/AppOpsServiceState;
    .param p2, "callback"    # Lcom/android/internal/app/IOpsCallback;
    .param p3, "userId"    # I

    .line 326
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    .line 328
    iput p3, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    .line 330
    :try_start_9
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 331
    const-string v0, "AppOpsServiceState"

    const-string/jumbo v1, "linkToDeath"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 333
    goto :goto_1d

    .line 332
    :catch_1c
    move-exception v0

    .line 334
    :goto_1d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 349
    invoke-virtual {p0}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    .line 350
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    iget v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    # invokes: Lcom/android/server/AppOpsServiceState;->startService(I)V
    invoke-static {v0, v1}, Lcom/android/server/AppOpsServiceState;->access$300(Lcom/android/server/AppOpsServiceState;I)V

    .line 351
    const-string v0, "AppOpsServiceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 337
    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    if-eqz v0, :cond_5

    .line 338
    return-void

    .line 341
    :cond_5
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    .line 342
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    .line 344
    goto :goto_14

    .line 343
    :catch_13
    move-exception v0

    .line 345
    :goto_14
    return-void
.end method
