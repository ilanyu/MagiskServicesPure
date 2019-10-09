.class Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;

    .line 147
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    # getter for: Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_7
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 152
    iget-object v1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    # getter for: Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_35

    .line 154
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_35

    .line 156
    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 158
    .local v2, "userId":I
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/content/ContentService;->access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V

    .line 162
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_35
    :goto_35
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method
