.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PinnerService;
    .param p2, "x1"    # Lcom/android/server/PinnerService$1;

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PinnerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 596
    :cond_f
    const-wide/16 v0, 0x0

    .line 597
    .local v0, "totalSize":J
    iget-object v2, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # invokes: Lcom/android/server/PinnerService;->snapshotPinnedFiles()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/PinnerService;->access$300(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PinnerService$PinnedFile;

    .line 598
    .local v3, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-string v6, "%s %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v8, v7, v5

    iget v5, v3, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 599
    iget v4, v3, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 600
    .end local v3    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_1b

    .line 601
    :cond_42
    const-string v2, "Total size: %s\n"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 602
    return-void
.end method
