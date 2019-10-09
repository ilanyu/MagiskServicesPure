.class Lcom/miui/server/enterprise/RestrictionsManagerService$2;
.super Ljava/lang/Object;
.source "RestrictionsManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/RestrictionsManagerService;->unmountPublicVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

.field final synthetic val$storageManager:Landroid/os/storage/StorageManager;

.field final synthetic val$volId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/miui/server/enterprise/RestrictionsManagerService;

    .line 354
    iput-object p1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$2;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    iput-object p2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$2;->val$storageManager:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$2;->val$volId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$2;->val$storageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$2;->val$volId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V

    .line 358
    return-void
.end method
