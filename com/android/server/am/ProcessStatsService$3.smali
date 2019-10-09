.class Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$outData:[B


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 538
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-object p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 540
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 542
    .local v0, "fout":Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 543
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_13

    .line 546
    goto :goto_1b

    .line 544
    :catch_13
    move-exception v1

    .line 545
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ProcessStatsService"

    const-string v3, "Failure writing pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1b
    return-void
.end method
