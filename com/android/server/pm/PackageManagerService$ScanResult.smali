.class Lcom/android/server/pm/PackageManagerService$ScanResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanResult"
.end annotation


# instance fields
.field public final changedAbiCodePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final success:Z


# direct methods
.method public constructor <init>(ZLcom/android/server/pm/PackageSetting;Ljava/util/List;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10326
    .local p3, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10327
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->success:Z

    .line 10328
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 10329
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->changedAbiCodePath:Ljava/util/List;

    .line 10330
    return-void
.end method
