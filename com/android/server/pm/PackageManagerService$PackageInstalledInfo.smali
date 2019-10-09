.class Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstalledInfo"
.end annotation


# instance fields
.field addedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field isReplace:Z

.field name:Ljava/lang/String;

.field newUsers:[I

.field origPackage:Ljava/lang/String;

.field origPermission:Ljava/lang/String;

.field origUsers:[I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

.field returnCode:I

.field returnMsg:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 16764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->isReplace:Z

    return-void
.end method

.method private setReturnMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "returnMsg"    # Ljava/lang/String;

    .line 16815
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16816
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    .line 16817
    .local v0, "childCount":I
    :goto_f
    nop

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 16818
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16817
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 16820
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 16781
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16782
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16783
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16784
    return-void
.end method

.method public setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Landroid/content/pm/PackageParser$PackageParserException;

    .line 16787
    iget v0, p2, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16788
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16789
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 16790
    .local v0, "childCount":I
    :goto_19
    nop

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_2a

    .line 16791
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V

    .line 16790
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 16793
    .end local v1    # "i":I
    :cond_2a
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16794
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 16797
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16798
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16799
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_18

    :cond_17
    move v0, v1

    .line 16800
    .local v0, "childCount":I
    :goto_18
    nop

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_29

    .line 16801
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 16800
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 16803
    .end local v1    # "i":I
    :cond_29
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16804
    return-void
.end method

.method public setReturnCode(I)V
    .registers 5
    .param p1, "returnCode"    # I

    .line 16807
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16808
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    .line 16809
    .local v0, "childCount":I
    :goto_f
    nop

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 16810
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16809
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 16812
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method
