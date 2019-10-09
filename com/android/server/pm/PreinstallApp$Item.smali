.class Lcom/android/server/pm/PreinstallApp$Item;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PreinstallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# static fields
.field static final TYPE_CLUSTER:I = 0x2

.field static final TYPE_MONOLITHIC:I = 0x1


# instance fields
.field apkFile:Ljava/io/File;

.field app:Ljava/io/File;

.field packageName:Ljava/lang/String;

.field pkg:Landroid/content/pm/PackageParser$Package;

.field pkgLite:Landroid/content/pm/PackageParser$PackageLite;

.field type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "pkgLite"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p4, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    .line 64
    # invokes: Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    .line 65
    iput-object p3, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    .line 66
    iput-object p4, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 67
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    iput v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    .line 68
    return-void
.end method

.method static betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 6
    .param p0, "newItem"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p1, "oldItem"    # Lcom/android/server/pm/PreinstallApp$Item;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_13

    .line 74
    iget-object v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v3, v3, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    if-le v0, v3, :cond_2d

    .line 75
    return v2

    .line 78
    :cond_13
    iget v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    if-le v0, v3, :cond_1a

    .line 80
    return v2

    .line 81
    :cond_1a
    iget v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    if-ne v0, v3, :cond_2d

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v3, v3, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    if-le v0, v3, :cond_2c

    move v1, v2

    nop

    :cond_2c
    return v1

    .line 86
    :cond_2d
    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v1, v1, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
