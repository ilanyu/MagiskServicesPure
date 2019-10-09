.class Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;
.super Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2839
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {p0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnsyncableAccountDone(Z)V
    .registers 3
    .param p1, "isReady"    # Z

    .line 2842
    if-eqz p1, :cond_7

    .line 2843
    iget-object v0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    # invokes: Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2845
    :cond_7
    return-void
.end method
