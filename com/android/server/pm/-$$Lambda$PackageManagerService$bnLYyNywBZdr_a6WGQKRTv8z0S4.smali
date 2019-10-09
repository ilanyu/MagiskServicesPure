.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$bnLYyNywBZdr_a6WGQKRTv8z0S4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->lambda$unsuspendForNonSystemSuspendingPackages$6(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
