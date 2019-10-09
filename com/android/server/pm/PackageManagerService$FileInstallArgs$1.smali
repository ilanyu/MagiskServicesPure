.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;
.super Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .line 16400
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16403
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 16407
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    # getter for: Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->access$4400(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16408
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 16410
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 16411
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_2c} :catch_2d

    return-object v2

    .line 16412
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_2d
    move-exception v0

    .line 16413
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16404
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
