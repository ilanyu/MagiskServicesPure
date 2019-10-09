.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$zqf4q6-7wkQreppEUOBfp0NE94M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$zqf4q6-7wkQreppEUOBfp0NE94M;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-wide p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$zqf4q6-7wkQreppEUOBfp0NE94M;->f$1:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$zqf4q6-7wkQreppEUOBfp0NE94M;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$zqf4q6-7wkQreppEUOBfp0NE94M;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setTime$11(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    return-void
.end method
