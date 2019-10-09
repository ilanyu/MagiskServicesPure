.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$sortPackagesByUsageDate$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result p1

    return p1
.end method
