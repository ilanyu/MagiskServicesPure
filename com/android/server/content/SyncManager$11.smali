.class Lcom/android/server/content/SyncManager$11;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 625
    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 4
    .param p1, "removedAuthority"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 628
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v1, "onAuthorityRemoved"

    # invokes: Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 629
    return-void
.end method
