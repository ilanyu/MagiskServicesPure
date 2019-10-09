.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 199
    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 200
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_13

    .line 201
    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 202
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->bootCompleted()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    .line 204
    :cond_13
    :goto_13
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;I)V

    .line 219
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 192
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 193
    const-string/jumbo v0, "mount"

    iget-object v1, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->start()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 195
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # setter for: Lcom/android/server/StorageManagerService;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$302(Lcom/android/server/StorageManagerService;I)I

    .line 209
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onUnlockUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$400(Lcom/android/server/StorageManagerService;I)V

    .line 214
    return-void
.end method
