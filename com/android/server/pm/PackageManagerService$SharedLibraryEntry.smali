.class public final Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final apk:Ljava/lang/String;

.field public final info:Landroid/content/pm/SharedLibraryInfo;

.field public final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;J)V
    .registers 24
    .param p1, "_path"    # Ljava/lang/String;
    .param p2, "_apk"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # J
    .param p6, "type"    # I
    .param p7, "declaringPackageName"    # Ljava/lang/String;
    .param p8, "declaringPackageVersionCode"    # J

    move-object v0, p0

    .line 920
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 921
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->path:Ljava/lang/String;

    .line 922
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->apk:Ljava/lang/String;

    .line 923
    new-instance v10, Landroid/content/pm/SharedLibraryInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    invoke-direct {v8, v11, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v9, 0x0

    move-object v3, v10

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;)V

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;->info:Landroid/content/pm/SharedLibraryInfo;

    .line 925
    return-void
.end method
