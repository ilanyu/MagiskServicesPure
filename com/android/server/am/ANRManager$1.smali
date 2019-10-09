.class Lcom/android/server/am/ANRManager$1;
.super Ljava/lang/Thread;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ANRManager;->addTextToDropBox(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "x0"    # Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/am/ANRManager$1;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ANRManager$1;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 280
    sget v0, Lcom/android/server/am/ANRManager;->DROPBOX_MAX_SIZE:I

    iget-object v1, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 282
    .local v0, "maxDataFileSize":I
    iget-object v1, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    if-eqz v1, :cond_36

    if-lez v0, :cond_36

    .line 284
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    const-string v3, "\n\n[[TRUNCATED]]"

    invoke-static {v2, v0, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 288
    goto :goto_36

    .line 286
    :catch_1d
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v1    # "e":Ljava/io/IOException;
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/android/server/am/ANRManager$1;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ANRManager$1;->val$dropboxTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method
