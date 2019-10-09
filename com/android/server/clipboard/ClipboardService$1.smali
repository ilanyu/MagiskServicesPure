.class Lcom/android/server/clipboard/ClipboardService$1;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;

    .line 174
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostClipboardUpdated(Ljava/lang/String;)V
    .registers 7
    .param p1, "contents"    # Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/content/ClipData;

    const-string v1, "host clipboard"

    const-string/jumbo v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 181
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # getter for: Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$000(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v3, v4}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2a

    throw v2
.end method
