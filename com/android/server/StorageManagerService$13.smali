.class Lcom/android/server/StorageManagerService$13;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->stopDefrag(Landroid/os/IVoldTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$listener:Landroid/os/IVoldTaskListener;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2071
    iput-object p1, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$13;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2079
    iget-object v0, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$13;->val$listener:Landroid/os/IVoldTaskListener;

    # invokes: Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$3400(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2080
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2074
    iget-object v0, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$13;->val$listener:Landroid/os/IVoldTaskListener;

    # invokes: Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$3300(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2075
    return-void
.end method
