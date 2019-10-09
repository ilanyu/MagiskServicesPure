.class Lcom/android/server/pm/PackageManagerService$27;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 23494
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$volumeUuid:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$27;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$27;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 23498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$volumeUuid:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$callingUid:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$27;->val$user:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_f} :catch_10

    .line 23502
    goto :goto_36

    .line 23499
    :catch_10
    move-exception v0

    .line 23500
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23501
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23503
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_36
    return-void
.end method
