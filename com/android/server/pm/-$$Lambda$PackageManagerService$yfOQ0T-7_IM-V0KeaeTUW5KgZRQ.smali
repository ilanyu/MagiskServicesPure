.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:[Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$1:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yfOQ0T-7_IM-V0KeaeTUW5KgZRQ;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$8(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;I)V

    return-void
.end method
