.class Lcom/android/server/am/ActivityManagerService$29;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 24998
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$29;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 25001
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 25002
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 25006
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 25001
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 25007
    const/4 v0, 0x0

    .line 25009
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25010
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 25015
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_28} :catch_44
    .catchall {:try_start_16 .. :try_end_28} :catchall_42

    .line 25016
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_3a

    .line 25021
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    .line 25023
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25021
    move-object v2, v1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_38} :catch_44
    .catchall {:try_start_2d .. :try_end_38} :catchall_42

    .line 25025
    goto :goto_3a

    .line 25024
    :catch_39
    move-exception v2

    .line 25030
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_4e

    .line 25032
    :try_start_3c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 25034
    :goto_3f
    goto :goto_4e

    .line 25033
    :catch_40
    move-exception v1

    goto :goto_3f

    .line 25030
    :catchall_42
    move-exception v1

    goto :goto_4f

    .line 25027
    :catch_44
    move-exception v1

    .line 25028
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    .line 25030
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_4e

    .line 25032
    :try_start_4a
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_40

    goto :goto_3f

    .line 25037
    :cond_4e
    :goto_4e
    return-void

    .line 25030
    :goto_4f
    if-eqz v0, :cond_56

    .line 25032
    :try_start_51
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 25034
    goto :goto_56

    .line 25033
    :catch_55
    move-exception v2

    .line 25034
    :cond_56
    :goto_56
    throw v1
.end method
