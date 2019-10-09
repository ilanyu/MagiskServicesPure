.class final Lcom/miui/server/SecurityManagerService$UserState;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

.field final mAccessControlCanceled:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlEnabled:Z

.field final mAccessControlLastCheck:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlLockConvenient:Z

.field mAccessControlLockMode:I

.field final mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlSettingInit:Z

.field private mAppPermissionControlStatus:I

.field mIsGameMode:Z

.field mLastResumePackage:Ljava/lang/String;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field userHandle:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    .line 202
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    .line 203
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/SecurityManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/miui/server/SecurityManagerService$1;

    .line 197
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService$UserState;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/server/SecurityManagerService$UserState;)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 197
    iget v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    return v0
.end method

.method static synthetic access$2202(Lcom/miui/server/SecurityManagerService$UserState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p1, "x1"    # I

    .line 197
    iput p1, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    return p1
.end method
