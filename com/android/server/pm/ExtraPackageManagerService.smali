.class public Lcom/android/server/pm/ExtraPackageManagerService;
.super Ljava/lang/Object;
.source "ExtraPackageManagerService.java"


# static fields
.field static final RESTORECON_FLAG_FILE:Ljava/lang/String; = "restorecon_flag"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string v0, "ExtraPackageManagerService"

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExtraRestoreconFlag(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Check extra restorecon flag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 67
    .local v0, "userId":I
    if-ne v0, v2, :cond_2b

    .line 68
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v2, "There\'s no second space, delete the flag file"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, "flagFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 74
    .end local v1    # "flagFile":Ljava/io/File;
    :cond_2b
    return-void
.end method

.method private static getExtraRestoreconFlagFile()Ljava/io/File;
    .registers 2

    .line 42
    const-string v0, "/data/system/restorecon_flag"

    .line 43
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static restoreconData(I)V
    .registers 7
    .param p0, "userId"    # I

    .line 19
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restorecon for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v0

    .line 21
    .local v0, "flagFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    .line 22
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v2, "There\'s no restorecon flag file"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 25
    :cond_28
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 26
    .local v1, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 27
    .local v2, "applicationInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_4d

    .line 28
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 29
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 33
    goto :goto_40

    .line 35
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4d
    sget-object v3, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restorecon done, delete flag file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    return-void
.end method

.method static setExtraRestoreconFlag()V
    .registers 5

    .line 47
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Set extra restorecon flag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, "flagFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 51
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 52
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create flag file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_2f

    .line 55
    goto :goto_4f

    .line 53
    :catch_2f
    move-exception v1

    .line 54
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_4f
    :goto_4f
    return-void
.end method
