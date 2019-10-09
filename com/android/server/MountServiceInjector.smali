.class public Lcom/android/server/MountServiceInjector;
.super Ljava/lang/Object;
.source "MountServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkExternalStorageForXSpace(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 18
    return v1

    .line 22
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_1b

    .line 26
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 25
    nop

    .line 27
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-lez v2, :cond_1a

    move v1, v3

    nop

    :cond_1a
    return v1

    .line 23
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1b
    move-exception v0

    .line 24
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    return v1
.end method
