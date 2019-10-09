.class Lcom/android/server/StorageManagerService$6;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1528
    iput-object p1, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1531
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "vold died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$1202(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)Landroid/os/IVold;

    .line 1533
    iget-object v0, p0, Lcom/android/server/StorageManagerService$6;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->connect()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;)V

    .line 1534
    return-void
.end method
