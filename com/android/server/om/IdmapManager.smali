.class Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 49
    return-void
.end method

.method private getIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 11
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .line 58
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 59
    .local v0, "sharedGid":I
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "targetPath":Ljava/lang/String;
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "overlayPath":Ljava/lang/String;
    :try_start_14
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_19} :catch_1c

    .line 67
    nop

    .line 68
    const/4 v3, 0x1

    return v3

    .line 63
    :catch_1c
    move-exception v3

    .line 64
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to generate idmap for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v4, 0x0

    return v4
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .registers 4
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .registers 5
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 7
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 81
    nop

    .line 82
    const/4 v0, 0x1

    return v0

    .line 78
    :catch_a
    move-exception v0

    .line 79
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to remove idmap for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    return v1
.end method
